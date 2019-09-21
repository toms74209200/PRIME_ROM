/* ============================================================================
 *  Title       : Prime number ROM testbench
 *
 *  File Name	: TB_PRIME_ROM.sv
 *  Project     :
 *  Block       :
 *  Tree        :
 *  Designer    : toms74209200 <https://github.com/toms74209200>
 *  Created     : 2019/09/22
 *  Copyright   : 2019 toms74209200
 *  License     : MIT License.
 *                http://opensource.org/licenses/mit-license.php
 * ============================================================================*/
`timescale 1ns/10ps

module TB_PRIME_ROM ;

// System
logic           CLK;        //(p) Clock

// ROM interface
logic [10:0]    ADDRESS;    //(p) Address
logic [15:0]    DATA;       //(p) Data

// Parameter
parameter ClkCyc = 20;

// Test module
PRIME_ROM U_PRIME_ROM (
    CLK,
    ADDRESS,
    DATA
);

/* ============================================================================
 * Clock
 * ============================================================================*/
always begin
    CLK <= 1'b0;
    #(ClkCyc);
    CLK <= 1'b1;
    #(ClkCyc);
end

/* ============================================================================
 * Initialization
 * ============================================================================*/
initial begin
    ADDRESS <= 16'd0;

/* ============================================================================
 * Address increment
 * ============================================================================*/
    while (ADDRESS !== 1227) begin
        @(posedge CLK);
        ADDRESS <= ADDRESS + 16'd1;
    end
    $finish;
end

endmodule   //TB_PRIME_ROM