
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "p_encoder_sequence_item.sv"        // transaction class
 `include "p_encoder_sequence.sv"             // sequence class
 `include "p_encoder_sequencer.sv"            // sequencer class
 `include "p_encoder_driver.sv"               // driver class
 `include "p_encoder_monitor.sv"              // monitor class
 `include "p_encoder_agent.sv"                // agent class  
 `include "p_encoder_coverage.sv"             // coverage class
 `include "p_encoder_scoreboard.sv"           // scoreboard class
 `include "p_encoder_env.sv"                  // environment class

 `include "p_encoder_test.sv"                 // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


