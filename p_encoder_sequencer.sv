class p_encoder_sequencer extends uvm_sequencer#(p_encoder_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(p_encoder_sequencer)  
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="p_encoder_sequencer",uvm_component parent);  
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------
  
endclass:p_encoder_sequencer

