class base_test  extends uvm_test;

`uvm_component_utils(base_test)


function new(string name ="base_test" , uvm_component parent);
super.new(name,parent);

endfunction


router_tb env;

virtual function void build_phase (uvm_phase phase);
super.build_phase(phase);
env = router_tb::type_id::create("router_tb" , this);
`uvm_info("base_test", "build_phase completed" , UVM_HIGH )
endfunction


virtual function void end_of_elaboration_phase (uvm_phase phase);

uvm_top.print_topology();


endfunction

endclass



class test2  extends base_test;

`uvm_component_utils(test2)


function new(string name ="test2" , uvm_component parent);
super.new(name,parent);

endfunction





endclass