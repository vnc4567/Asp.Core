using System;
using System.Collections.Generic;
using System.Text;

namespace Domain.Dollar
{
    public class Dollar
    {
        public Dollar(decimal amount)
        {
            Amount = amount;
        }

        private decimal Amount {  get;  set; }
        public Dollar Times(decimal multiplier)
        {
            return new Dollar(this.Amount * multiplier);
        }
        public override bool Equals(Object dollar)
        {
            return this.Amount==((Dollar) dollar).Amount;
        }
    }
}
