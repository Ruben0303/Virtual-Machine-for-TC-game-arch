#include<cmath>
#include<string>
#include<vector>
#include<fstream>
#include<iostream>
#include<exception>
#include"emu.h"

int decoder(const std::string & s, int start, int end)
{  
    int instr = 0;
    int j = 0; 
    for(int i = end - 1; i >= start; --i)
    {
        if(s[i] == '1')
        {
            instr += std::pow(2, j);
        }
        ++j;
    }
    return instr;  
}

emu::emu() : cnt(0), reg_vals(6){}

void emu::alu(const int * const op1, const int* const op2, int& dst, bool out, const std::string & instruction)
{
    int alu_inst = decoder(instruction, 5, 8);
    switch(alu_inst)
    { 
        case (int)ALU_insts::m_or:
            dst = ((*op1) | (*op2));
            std::cout <<"OR ";
            break;
        case (int)ALU_insts::m_not:
            dst = (~(*op1));
            std::cout <<"NOT ";
            break;
        case (int)ALU_insts::m_and:
            dst = ((*op1) & (*op2));
            std::cout <<"AND " ;
            break;

        case (int)ALU_insts::m_add:
            dst = ((*op1) + (*op2));
            std::cout <<"ADD " ;
            break;

        case (int)ALU_insts::m_sub:
            dst = ((*op1) - (*op2));
            std::cout <<"SUB " << "DEST = " << dst;
            break;
        default:
            std::cout << "UNKNOWN ALU INST";
            break;
    }
    std::cout << std::endl;
    if(out)
    {
        std::cout << "DEST IS OUT " << std::endl;
        std::cout << dst << std::endl;
    }
    std::cout << "ALU IS DONE" << std::endl;
}

void emu::cond(const int* const op1, const  int * const op2, const int address, const std::string & condition) 
{
    int cnd_type = decoder(condition, 2, 8);
    std::cout << "CND" << cnd_type << std::endl;
    bool counter_switch = false;
    if(cnd_type == (int)conditions::eq)
    {
//        std::cout << "==?" << std::endl;
        counter_switch = ((*op1) == (*op2));
    }
    else if(cnd_type == (int)conditions::neq)
    {
//        std::cout << "!=" <<  std::endl ;
        counter_switch = ((*op1) != (*op2));
    }
    else if(cnd_type == (int)conditions::lt)
    {
//        std::cout << "less than" << std::endl;
        counter_switch = ((*op1) < (*op2));
    }
    else if(cnd_type == (int)conditions::leq)
    {
//        std::cout << "less or eq" << std::endl;
        counter_switch = ((*op1) <= (*op2));
    }
    else if(cnd_type ==  (int)conditions::gr)
    {
//        std::cout << "great or eq" << std::endl;
        counter_switch = ((*op1) > (*op2));
    }
    else if(cnd_type ==  (int)conditions::greq)
    {
//        std::cout << "great or eq" << std::endl;
        counter_switch = ((*op1) >= (*op2));
    }
    if(counter_switch == 1)
    {
        cnt = address;
//        std::cout << "current counter is in " << address << "index" << std::endl;
    }
    else
    {
        std::cout << "UNKNOWN CONDITION" << std::endl;
    }
}
const std::string& emu::current_intruction()
{
    return RAM[cnt++];
}
void emu::RAM_read(const std::string & s)
{
    RAM.push_back(s);
}
int emu::get_cnt() const
{
    return cnt;
}
int emu::RAM_limit() const 
{
    return RAM.size();
}
