<?php

namespace App\Repository\Contracts;

use Illuminate\Http\Request;

interface PayrollRepoInterface
{
    public function findPayroll($id);

    public function findByContractId($contract_id);

    public function findPayrollSalary($payroll_id);

    public function store(Request $request);

    public function storeSalary($payroll_id, Request $request);

    public function deletePayrollSalary($id);
}