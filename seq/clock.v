/* First of all this is not a proper verilog file for clock
* Just shows how a clock can be coded - This piece of code will be reused
* when clocks of sequential cicruits are to be used
*/

initial
begin
    clock = 1'b0;
    repeat(30)
    #10 clock = ~clock
end


initial
begin
    clock = 1'b0;
end

initial 300 $finish;
always #10 clock = ~clock;

initial begin clock = 0; forever #10 clock = ~clock; end



