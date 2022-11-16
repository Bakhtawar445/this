using System;
using System.Collections.Generic;
using System.Text;

namespace TestProject1
{
    class Class1
    {
        public double Calculate_Salary(double hoursW, double up)
        {
            int base_hours = 160;
            if (hoursW > base_hours)
            {
                double basepay = bp(base_hours, hpr(hoursW));
                double overtimeHours = hoursW - base_hours;
                double overtimePay = overtimeHours * hpr(hoursW) * overtimeHours;
                double grossPay = basepay + overtimePay + up;
                return grossPay;
            }
            return 0;

            static double hpr(double hoursW)
            {
                return hoursW * 2;
            }
        }

        private static double bp(int base_hours, double hpr)
        {
            return hpr * base_hours;
        }
    }
}
//test class code
public void TestMethod1()
        {
            Class1 obj = new Class1();
            double variable = obj.Calculate_Salary(12, 99);
            Assert.AreEqual(variable, 40);
        }

