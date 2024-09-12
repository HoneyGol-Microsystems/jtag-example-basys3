/*
    JTAG IO Example
    Copyright (C) 2024 Ondrej Golasowski

    This source is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This source is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this source.  If not, see <https://www.gnu.org/licenses/>.
*/

module jtag_io_control(
    input  logic clk,
    input  logic reset,

    input  logic jtag_tck,
    input  logic jtag_tms,
    input  logic jtag_tdi,
    output logic jtag_tdo,

    output logic [15:0] gpo
);

    logic jtag_shift;
    logic jtag_pause;
    logic jtag_update;
    logic jtag_capture;
    logic jtag_sel_extest;
    logic jtag_tap_tdo;
    logic jtag_tap_chain_tdi;

    tap_top tap(
        .tms_pad_i(jtag_tms),
        .tck_pad_i(jtag_tck),
        .tdi_pad_i(jtag_tdi),
        .tdo_pad_o(jtag_tdo),

        .shift_dr_o(jtag_shift),
        .pause_dr_o(jtag_pause),
        .update_dr_o(jtag_update),
        .capture_dr_o(jtag_capture),

        .extest_select_o(jtag_sel_extest),

        .tdo_o(jtag_tap_tdo),
        .bs_chain_tdi_i(jtag_tap_chain_tdi)
    );

    generate
        logic [14:0] cell_connect;
        genvar i;

        for (i = 0; i < 16; i++) begin
            
            case (i)
                0: begin
                    OutputCell(
                        .FromCore(1'b1),
                        .FromPreviousBSCell(jtag_tap_tdo),
                        .CaptureDR(jtag_capture),
                        .ShiftDR(jtag_shift),
                        .UpdateDR(jtag_update),
                        .extest(jtag_sel_extest),
                        .TCK(jtag_tck),
                        .ToNextBSCell(cell_connect[i]),
                        .FromOutputEnable(1'b1),
                        .TristatedPin(gpo[i])
                    );
                end
                15: begin
                    OutputCell(
                        .FromCore(1'b1),
                        .FromPreviousBSCell(cell_connect[i-1]),
                        .CaptureDR(jtag_capture),
                        .ShiftDR(jtag_shift),
                        .UpdateDR(jtag_update),
                        .extest(jtag_sel_extest),
                        .TCK(jtag_tck),
                        .ToNextBSCell(jtag_tap_chain_tdi),
                        .FromOutputEnable(1'b1),
                        .TristatedPin(gpo[i])
                    );
                end
                default: begin
                    OutputCell(
                        .FromCore(1'b1),
                        .FromPreviousBSCell(cell_connect[i-1]),
                        .CaptureDR(jtag_capture),
                        .ShiftDR(jtag_shift),
                        .UpdateDR(jtag_update),
                        .extest(jtag_sel_extest),
                        .TCK(jtag_tck),
                        .ToNextBSCell(cell_connect[i]),
                        .FromOutputEnable(1'b1),
                        .TristatedPin(gpo[i])
                    );
                end
            endcase
        end
    endgenerate


endmodule