using System;
using System.Collections.Generic;

namespace $rootnamespace$.Models.Home
{
	public class IndexModel
	{
		public IEnumerable<Type> ExceptionTypes { get; set; }
		public string ExceptionTypeToThrow { get; set; }
	}
}