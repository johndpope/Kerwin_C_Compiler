﻿// Copyright (c) 2014 AlphaSierraPapa for the SharpDevelop Team
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this
// software and associated documentation files (the "Software"), to deal in the Software
// without restriction, including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
// to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

using System;
using ICSharpCode.Core;
using ICSharpCode.XmlEditor;
using NUnit.Framework;

namespace XmlEditor.Tests.Utils.Tests
{
	[TestFixture]
	public class XmlSchemaCompletionCollectionFileNamesTests
	{
		XmlSchemaCompletionCollection schemas;
		
		[SetUp]
		public void Init()
		{
			schemas = new XmlSchemaCompletionCollection();
		}
		
		[Test]
		public void NoItemsInSchemaCollection()
		{
			Assert.AreEqual(0, XmlSchemaCompletionCollectionFileNames.GetFileNames(schemas).Length);
		}
		
		[Test]
		public void OneSchemaWithFileName()
		{
			XmlSchemaCompletion schema = new XmlSchemaCompletion();
			schema.FileName = FileName.Create("a.xsd");
			schemas.Add(schema);
			
			string[] expectedFileNames = new string[] {"a.xsd"};
			Assert.AreEqual(expectedFileNames, XmlSchemaCompletionCollectionFileNames.GetFileNames(schemas));
		}
		
		[Test]
		public void TwoSchemasWithFileName()
		{
			XmlSchemaCompletion schema = new XmlSchemaCompletion();
			schema.FileName = FileName.Create("a.xsd");
			schemas.Add(schema);
			
			schema = new XmlSchemaCompletion();
			schema.FileName = FileName.Create("b.xsd");
			schemas.Add(schema);
			
			string[] expectedFileNames = new string[] {"a.xsd", "b.xsd"};
			Assert.AreEqual(expectedFileNames, XmlSchemaCompletionCollectionFileNames.GetFileNames(schemas));
		}

	}
}