#include "emu.h"
void emu_runner::Read_RAM(const std::string input_file)
{ 
    std::string ins;
    std::ifstream inf;
    std::cout << "opening file" << std::endl;
    inf.open(input_file);
    if(!inf) 
    { // file couldn't be opened
        std::cerr << "Error: file could not be opened" << std::endl;
        exit(1);
    }
    while(!inf.eof())
    {   
        inf >> ins;
        if(ins.size() != 8)
        {
            throw std::runtime_error("Unknown Instruction");
            std::cout << "ERRROR";
        }
        if(!ins.empty())
            EMU.RAM_read(ins);

    }
    EMU.RAM_pop_last();
    std::cout << std::endl;
    inf.close();  
    std::cout << "closing file" << std::endl;
    std::cout << "RAM size = "<< EMU.RAM_limit() << std::endl;

}

void emu_runner::DO_INSTRUCTION(const int* op1, const int * op2, int & dest,bool out, const std::string& opcode)
{


    instruction ins_type = (opcode[2] == '1')? instruction::COND : instruction::ALU;
    switch(ins_type)
    {

        case instruction::ALU:
            std::cout <<"ALU" << std::endl;
            EMU.alu(op1, op2, dest, out, opcode);
            break;
        case instruction::COND:
            EMU.cond(op1, op2, dest, opcode);
            std::cout << "COND" << std::endl;
            break;
        default:
            break;
    }

}

void emu_runner::initialize_operands(int *& op1, int *& op2, int & ind1, int & ind2, const std::string& opcode)
{
    bool input1 = false;
    bool input2 = false;
    if(opcode[1] == '1')
    {
        op1 = &ind1;
    }
    else if(ind1 < 6)
    {
        ind1 &= 5;
        op1 = &EMU.reg_vals[ind1];
    }
    else if(ind1 == 6)
    {
        input1 = true;
    }
    if(opcode[0] == '1')
    {
        op2 = &ind2;
    }
    else if(ind2 < 6)
    {
        op2 = &EMU.reg_vals[ind2];
    }
    else if(ind2 == 6)
    {
        input2 = true;
    }
    if(input1 || input2)
    {
        std::cin >> input;
        if(input1)
        {
            op1 = &input;
        }
        if(input2)
        {
            op2 = &input;
        } 
    }
//    std::cout << op1 << "DDDDD" << op2 << std::endl; 

}

void emu_runner::run()
{
    Read_RAM("input.txt");
    while(EMU.get_cnt() < EMU.RAM_limit())
    {
        std::string opcode;
        opcode = EMU.current_intruction();
        std::string X = EMU.current_intruction();
        std::string Y = EMU.current_intruction();
        std::string Z = EMU.current_intruction();
        int ind1 =  decoder(X, 5, 8);
        int ind2 = decoder(Y, 5, 8);
        //                std::cout <<"ind1 = " << ind1 << " ind2 = " << ind2 << std::endl;
        int* op1; 
        int* op2;
        initialize_operands( op1,  op2, ind1, ind2,  opcode);
        int dst_ind = decoder(Z, 0, 8);
        bool out = false;
        int out_val;
        int & dest = (dst_ind < 6)? EMU.reg_vals[dst_ind] : out_val;
        if(dst_ind == 6)
        {
            out = true;
        }
        DO_INSTRUCTION(op1, op2, dest, out, opcode);
        Print_regs(); 
    }
}
void emu_runner::Print_regs()
{
    {
        for(int i = 0; i < EMU.reg_vals.size(); ++i)
        {
            std::cout << "R" << i << " = " << EMU.reg_vals[i] << std::endl;
        }

    }
}
