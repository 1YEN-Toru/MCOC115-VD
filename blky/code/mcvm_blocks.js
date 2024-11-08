Blockly.Blocks['mcvm_cpu_asm'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("asm")
        .appendField(new Blockly.FieldTextInput("cmpi r0,0"), "ASM");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
 this.setTooltip("inline assembler");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_cpu_cend'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("cend");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(0);
 this.setTooltip("convert endian, big and little");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_cpu_irqen'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("irq enable")
        .appendField(new Blockly.FieldDropdown([["level 0 (No)","sreg_ie_0"], ["level 1","sreg_ie_1"], ["level 2","sreg_ie_2"], ["level 3 (All)","sreg_ie_3"]]), "LEV");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
 this.setTooltip("set interrupts enable level");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_cpu_reg'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("cpu")
        .appendField(new Blockly.FieldDropdown([["r0","r0"], ["r1","r1"], ["r2","r2"], ["r3","r3"], ["r4","r4"], ["r5","r5"], ["r6","r6"], ["r7","r7"], ["sr","sr"], ["pc","pc"], ["sp","sp"], ["iv","iv"], ["tr","tr"]]), "REG");
    this.setInputsInline(true);
    this.setOutput(true, ["Number", "Boolean"]);
    this.setColour(0);
 this.setTooltip("CPU register reference");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_cpu_set'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("cpu")
        .appendField(new Blockly.FieldDropdown([["r0","r0"], ["r1","r1"], ["r2","r2"], ["r3","r3"], ["r4","r4"], ["r5","r5"], ["r6","r6"], ["r7","r7"], ["sr","sr"], ["pc","pc"], ["sp","sp"], ["iv","iv"], ["tr","tr"]]), "REG")
        .appendField("=");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
 this.setTooltip("CPU register set");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_fpu_fdown'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("fdown");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(0);
 this.setTooltip("round down to zero");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_fpu_ftoi'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("ftoi");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(0);
 this.setTooltip("cast float to integer");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_fpu_isinf'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("isinf");
    this.setInputsInline(false);
    this.setOutput(true, "Boolean");
    this.setColour(0);
 this.setTooltip("is INF or -INF");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_fpu_isnan'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("isnan");
    this.setInputsInline(false);
    this.setOutput(true, "Boolean");
    this.setColour(0);
 this.setTooltip("is NaN");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_fpu_itof'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("itof");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(0);
 this.setTooltip("cast integer to float");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_sim_fail'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sim fail");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
 this.setTooltip("simulation fail");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_sim_pass'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("sim pass");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(0);
 this.setTooltip("simulation pass");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMCVM");
  }
};

Blockly.Blocks['mcvm_mem_addr'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mem addr")
        .appendField(new Blockly.FieldVariable("item"), "VAR");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(15);
 this.setTooltip("get memory address to variable");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMEMO");
  }
};

Blockly.Blocks['mcvm_mem_read'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mem read")
        .appendField(new Blockly.FieldDropdown([["B","B"], ["W","W"], ["L","L"]]), "SIZ");
    this.appendValueInput("ADR")
        .setCheck("Number")
        .appendField("adr");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(15);
 this.setTooltip("memory read");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMEMO");
  }
};

Blockly.Blocks['mcvm_mem_write'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("mem write")
        .appendField(new Blockly.FieldDropdown([["B","B"], ["W","W"], ["L","L"]]), "SIZ");
    this.appendValueInput("ADR")
        .setCheck("Number")
        .appendField("adr");
    this.appendValueInput("DAT")
        .setCheck(["Number", "Boolean"])
        .appendField("dat");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(15);
 this.setTooltip("memory write");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMEMO");
  }
};

Blockly.Blocks['mcvm_memx_read'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("memx read")
        .appendField(new Blockly.FieldDropdown([["B","B"], ["W","W"]]), "SIZ");
    this.appendValueInput("ADRX")
        .setCheck("Number")
        .appendField("adrx");
    this.appendValueInput("ADR")
        .setCheck("Number")
        .appendField("adr");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(15);
 this.setTooltip("memory read (extended address)");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMEMO");
  }
};

Blockly.Blocks['mcvm_memx_write'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("memx write")
        .appendField(new Blockly.FieldDropdown([["B","B"], ["W","W"]]), "SIZ");
    this.appendValueInput("ADRX")
        .setCheck("Number")
        .appendField("adrx");
    this.appendValueInput("ADR")
        .setCheck("Number")
        .appendField("adr");
    this.appendValueInput("DAT")
        .setCheck(["Number", "Boolean"])
        .appendField("dat");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(15);
 this.setTooltip("memory write (extended address)");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKMEMO");
  }
};

Blockly.Blocks['mcoc_math_ascii'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("ascii")
        .appendField(new Blockly.FieldTextInput("A"), "TXT");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(30);
 this.setTooltip("math number (ASCII code)");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_math_bit_operation'] = {
  init: function() {
    this.appendValueInput("A")
        .setCheck(["Number", "Boolean"]);
    this.appendValueInput("B")
        .setCheck(["Number", "Boolean"])
        .appendField(new Blockly.FieldDropdown([["&","&"], ["|","|"], ["^","^"], ["<<","<<"], [">>",">>"]]), "OP");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(30);
 this.setTooltip("bit wise logic operation");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_math_number'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput("0x01"), "NUM");
    this.setInputsInline(true);
    this.setOutput(true, ["Number", "Boolean"]);
    this.setColour(30);
 this.setTooltip("math number (extended)");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_math_unary'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck(["Number", "Boolean"])
        .appendField(new Blockly.FieldDropdown([["-","-"], ["inc","1+"], ["dec","-1+"], ["sq","sq"], ["2*","2*"], ["~","~"], ["!","!"], ["!!","!!"]]), "OP");
    this.setInputsInline(false);
    this.setOutput(true, ["Number", "Boolean"]);
    this.setColour(30);
 this.setTooltip("unary operation");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_pack'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pack")
        .appendField(new Blockly.FieldCheckbox("TRUE"), "ENB");
    this.appendStatementInput("PAC")
        .setCheck(null);
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(30);
 this.setTooltip("packing block");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_swap'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("swap")
        .appendField(new Blockly.FieldVariable("item"), "A");
    this.appendDummyInput()
        .appendField("and")
        .appendField(new Blockly.FieldVariable("item"), "B");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(30);
 this.setTooltip("swap variables A and B");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_task'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("task")
        .appendField(new Blockly.FieldDropdown([["CPU2","CPU2"], ["IRQ","IRQ"], ["IRQ2","IRQ2"]]), "TASK");
    this.appendStatementInput("DO")
        .setCheck(null);
    this.setInputsInline(true);
    this.setColour(30);
 this.setTooltip("define task");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_text_atoi'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("String")
        .appendField("atoi");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(30);
 this.setTooltip("convert ASCII text to integer");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_text_itoa'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck(["Number", "Boolean"])
        .appendField("itoa");
    this.setInputsInline(false);
    this.setOutput(true, "String");
    this.setColour(30);
 this.setTooltip("convert integer to ASCII text");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_text_itox'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck(["Number", "Boolean"])
        .appendField("itox");
    this.appendDummyInput()
        .appendField("digit")
        .appendField(new Blockly.FieldNumber(4, 1, 8, 1), "digits");
    this.setInputsInline(true);
    this.setOutput(true, "String");
    this.setColour(30);
 this.setTooltip("convert integer to hexadecimal ASCII text");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_text_xtoi'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("String")
        .appendField("xtoi");
    this.setInputsInline(false);
    this.setOutput(true, "Number");
    this.setColour(30);
 this.setTooltip("convert hexadecimal ASCII text to integer");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTND");
  }
};

Blockly.Blocks['mcoc_port_read'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("digitalRead");
    this.appendValueInput("PIN")
        .setCheck("Number")
        .appendField("pin");
    this.setInputsInline(true);
    this.setOutput(true, ["Number", "Boolean"]);
    this.setColour(60);
 this.setTooltip("digitalRead");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_port_write'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("digitalWrite");
    this.appendValueInput("PIN")
        .setCheck("Number")
        .appendField("pin");
    this.appendValueInput("VAL")
        .setCheck(["Number", "Boolean"])
        .appendField("val");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("digitalWrite");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_delay'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("delay");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("delay [ms]");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_delay_us'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("delayMicroseconds");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("delay [us]");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_delay_cyc'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("delayTicks");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("delay [tick]");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_micros'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("micros");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(60);
 this.setTooltip("micros");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_millis'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("millis");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(60);
 this.setTooltip("millis");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_sytm_ticks'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("ticks");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(60);
 this.setTooltip("ticks");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_uart_avail'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("uart avail");
    this.setInputsInline(true);
    this.setOutput(true, ["Boolean", "Number"]);
    this.setColour(60);
 this.setTooltip("is UART receive data available");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_uart_getline'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("uart getline");
    this.setInputsInline(true);
    this.setOutput(true, "String");
    this.setColour(60);
 this.setTooltip("get a line from UART receive data");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_uart_print'] = {
  init: function() {
    this.appendValueInput("TXT")
        .setCheck("String")
        .appendField("uart print");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("print text; UART transfer");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_uart_println'] = {
  init: function() {
    this.appendValueInput("TXT")
        .setCheck("String")
        .appendField("uart println");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(60);
 this.setTooltip("print text+CRLF; UART transfer");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLIBR");
  }
};

Blockly.Blocks['mcoc_string_compare_left'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("compare left");
    this.appendValueInput("OFST")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("item"), "VAR")
        .appendField("+");
    this.appendValueInput("VAL")
        .setCheck("String")
        .appendField("and");
    this.setInputsInline(true);
    this.setOutput(true, "Boolean");
    this.setColour(45);
 this.setTooltip("compare left of string variable and text");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_ctoa'] = {
  init: function() {
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("ctoa");
    this.setInputsInline(false);
    this.setOutput(true, "String");
    this.setColour(45);
 this.setTooltip("convert ASCII code to ASCII text");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_find'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("find in");
    this.appendValueInput("OFST")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("item"), "VAR")
        .appendField("+");
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField("char");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(45);
 this.setTooltip("find character in string variable");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_get_char'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("get char");
    this.appendValueInput("OFST")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("item"), "VAR")
        .appendField("+");
    this.setInputsInline(true);
    this.setOutput(true, "Number");
    this.setColour(45);
 this.setTooltip("get character code from string variable");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_label'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pointer to");
    this.appendValueInput("OFST")
        .setCheck("Number")
        .appendField(new Blockly.FieldTextInput("label"), "LAB")
        .appendField("+");
    this.setInputsInline(true);
    this.setOutput(true, "String");
    this.setColour(45);
 this.setTooltip("pointer to string label");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_pointer'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("pointer to");
    this.appendValueInput("OFST")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("item"), "VAR")
        .appendField("+");
    this.setInputsInline(true);
    this.setOutput(true, "String");
    this.setColour(45);
 this.setTooltip("pointer to string variable");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_string_set'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("set");
    this.appendValueInput("VAL")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("item"), "VAR")
        .appendField("+");
    this.appendValueInput("TXT")
        .setCheck("String")
        .appendField("=");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(45);
 this.setTooltip("set string variable");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKSTRG");
  }
};

Blockly.Blocks['mcoc_controls_dorept'] = {
  init: function() {
    this.appendStatementInput("DO")
        .setCheck(null)
        .appendField("do");
    this.appendValueInput("BOOL")
        .setCheck("Boolean")
        .appendField("repeat")
        .appendField(new Blockly.FieldDropdown([["while","WHILE"], ["until","UNTIL"]]), "MODE");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(120);
 this.setTooltip("do repeat loop");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLOOP");
  }
};

Blockly.Blocks['mcoc_controls_loop'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("loop");
    this.appendStatementInput("DO")
        .setCheck(null);
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setColour(120);
 this.setTooltip("forever loop");
 this.setHelpUrl("http://hello.world.coocan.jp/ARDUINO31/a316_blky2mcvm.html#BLKLOOP");
  }
};