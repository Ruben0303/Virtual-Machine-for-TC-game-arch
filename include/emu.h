#pragma once
#include<cmath>

#include<string>
#include<vector>
#include<fstream>
#include<iostream>
#include<exception>

int decoder(const std::string & s, int start, int end);
enum class conditions
{
    eq = 32,
    neq = 33,
    lt = 34,
    leq = 35,
    gr = 36,
    greq = 37
};
enum class instruction
{
    IMM,
    COPY,
    ALU,
    COND
};
enum class  ALU_insts
{
    m_add,
    m_sub,
    m_and,
    m_or,
    m_not,
    m_xor
};



class emu
{
    private:
        int cnt;
        std::vector<std::string> RAM;
    public:
        std::vector<int> reg_vals;
        emu(); 
        void alu(const int * const op1, const int * const op2, int& dst, bool out, const std::string & instruction);
        void cond(const int * const  op1, const  int * const op2, const int address, const std::string & condition); 
        const std::string& current_intruction(); 
        void RAM_read(const std::string & s); 
        int get_cnt() const; 
        int RAM_limit() const;
        void RAM_pop_last() { RAM.pop_back();} 

};


class emu_runner
{
    private:
        emu EMU;
        int input;
        int output;
    public:
        void Read_RAM(const std::string input_file);
       void initialize_operands(int *& op1, int *& op2, int & ind1, int & ind2, const  std::string& opcode);
        void DO_INSTRUCTION(const int* op1, const int * op2, int & dest, bool out, const std::string& opcode);
        void run();
        void Print_regs(); 
};



