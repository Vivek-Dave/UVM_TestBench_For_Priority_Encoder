
/***************************************************
** class name  : p_encoder_sequence
** description : generate random input for DUT
***************************************************/
class p_encoder_sequence extends uvm_sequence#(p_encoder_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(p_encoder_sequence)            
  //----------------------------------------------------------------------------

  p_encoder_sequence_item txn;
  int unsigned LOOP=40;

  //----------------------------------------------------------------------------
  function new(string name="p_encoder_sequence");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
    repeat(LOOP) begin 
      txn=p_encoder_sequence_item::type_id::create("txn");
      start_item(txn);
      txn.randomize();
      #5;
      finish_item(txn);
    end
  endtask:body
  //----------------------------------------------------------------------------
endclass:p_encoder_sequence

/***************************************************
** class name  : sequence_1
** description :
***************************************************/
class sequence_1 extends p_encoder_sequence;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(sequence_1)      
  //----------------------------------------------------------------------------
  
  p_encoder_sequence_item txn;
  int unsigned LOOP=2;
  int temp=1;
  //----------------------------------------------------------------------------
  function new(string name="sequence_1");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    repeat(LOOP) begin
      for(int i=0;i<8;i++) begin 
        txn=p_encoder_sequence_item::type_id::create("txn");
        start_item(txn);
        txn.randomize()with{txn.in==temp;};
        #5;
        finish_item(txn);
        temp=temp<<1;
      end
      temp=1;
    end
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:sequence_1