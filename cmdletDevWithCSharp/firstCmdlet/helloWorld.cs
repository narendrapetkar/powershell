using System;
using System.Management.Automation;


namespace firstCmdlet
{
    [Cmdlet(VerbsCommon.Get, "Greeting")]
    public class helloWorld : PSCmdlet
    {
        // better to have only one param for value from pipeline
        [Parameter(ValueFromPipeline = true, Mandatory = true)]
        public string name { get; set; }

        [Parameter(Mandatory = false)]
        public string lastname { get; set; }

        protected override void ProcessRecord()
        {
            var greetText = "Hello " + name + (string.IsNullOrEmpty(lastname) ? "" : lastname);
            WriteObject(greetText); 
        }
    }
}
