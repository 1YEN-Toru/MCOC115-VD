javascript.javascriptGenerator.forBlock['mcvm_cpu_asm'] = function(block, generator) {
  var text_asm = block.getFieldValue('ASM');
  // TODO: Assemble javascript into code variable.
text_asm = text_asm.replace(/^#/,'//');
  var code = 'cpu.asm (' + generator.quote_(text_asm) + ');\n';
if (text_asm.match (/^\/\//)!=null)
	code = text_asm + '\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_cpu_cend'] = function(block, generator) {
  var dropdown_opc = block.getFieldValue('OPC');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'cpu.' + dropdown_opc.toLowerCase() + ' (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_cpu_exsg'] = function(block, generator) {
  var dropdown_opc = block.getFieldValue('OPC');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'cpu.' + dropdown_opc.toLowerCase() + ' (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_cpu_irqen'] = function(block, generator) {
  var dropdown_lev = block.getFieldValue('LEV');
  // TODO: Assemble javascript into code variable.
  var code = 'cpu.srie (' + dropdown_lev + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_cpu_reg'] = function(block, generator) {
  var dropdown_reg = block.getFieldValue('REG');
  // TODO: Assemble javascript into code variable.
  var code = 'cpu.'+ dropdown_reg;
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_cpu_set'] = function(block, generator) {
  var dropdown_reg = block.getFieldValue('REG');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'cpu.' + dropdown_reg + ' = ' + value_val + '\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_fpu_fdown'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'Math.trunc (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_fpu_ftoi'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'ftoi (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_fpu_isinf'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = '!isFinite (' + value_val + ') && !isNaN (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.NONE];
};

javascript.javascriptGenerator.forBlock['mcvm_fpu_isnan'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'isNaN (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_fpu_itof'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'itof (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_sim_stat'] = function(block, generator) {
  var dropdown_stat = block.getFieldValue('STAT');
  // TODO: Assemble javascript into code variable.
if (dropdown_stat=='simpass')
	dropdown_stat = 'pass';
else if (dropdown_stat=='simfail')
	dropdown_stat = 'fail';
else if (dropdown_stat=='simneut')
	dropdown_stat = 'neutral';
  var code = 'sim.' + dropdown_stat + ' ();\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_sim_fail'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'sim.fail ();	// obsolete\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_sim_pass'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'sim.pass ();	// obsolete\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_mem_addr'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  // TODO: Assemble javascript into code variable.
  var code = '&' + generator.getVariableName(block.getFieldValue('VAR'));
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_mem_alloc'] = function(block, generator) {
  var text_name = block.getFieldValue('NAME');
  var text_size = block.getFieldValue('SIZE');
  // TODO: Assemble javascript into code variable.
  var code = 'var ' + text_name + ' = new Array(' + text_size + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_mem_read'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_adr = generator.valueToCode(block, 'ADR', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_siz.toLowerCase()=='b')
	dropdown_siz = 'byte';
else if (dropdown_siz.toLowerCase()=='w')
	dropdown_siz = 'word';
else if (dropdown_siz.toLowerCase()=='l')
	dropdown_siz = 'long';
  var code = 'mem.read_' + dropdown_siz.toLowerCase() + ' (' + value_adr + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_mem_write'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_adr = generator.valueToCode(block, 'ADR', javascript.Order.NONE);
  var value_dat = generator.valueToCode(block, 'DAT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_siz.toLowerCase()=='b')
	dropdown_siz = 'byte';
else if (dropdown_siz.toLowerCase()=='w')
	dropdown_siz = 'word';
else if (dropdown_siz.toLowerCase()=='l')
	dropdown_siz = 'long';
  var code = 'mem.write_' + dropdown_siz.toLowerCase() + ' (' + value_adr +',' + value_dat + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_memx_read'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_adrx = generator.valueToCode(block, 'ADRX', javascript.Order.NONE);
  var value_adr = generator.valueToCode(block, 'ADR', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_siz.toLowerCase()=='b')
	dropdown_siz = 'byte';
else if (dropdown_siz.toLowerCase()=='w')
	dropdown_siz = 'word';
else if (dropdown_siz.toLowerCase()=='l')
	dropdown_siz = 'long';
  var code = 'memx.read_' + dropdown_siz.toLowerCase() + ' (' + value_adrx + ',' + value_adr + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_memx_write'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_adrx = generator.valueToCode(block, 'ADRX', javascript.Order.NONE);
  var value_adr = generator.valueToCode(block, 'ADR', javascript.Order.NONE);
  var value_dat = generator.valueToCode(block, 'DAT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_siz.toLowerCase()=='b')
	dropdown_siz = 'byte';
else if (dropdown_siz.toLowerCase()=='w')
	dropdown_siz = 'word';
else if (dropdown_siz.toLowerCase()=='l')
	dropdown_siz = 'long';
  var code = 'memx.write_' + dropdown_siz.toLowerCase() + ' (' + value_adrx + ',' + value_adr +',' + value_dat + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_mem_array_def'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var text_siz = block.getFieldValue('SIZ');
  // TODO: Assemble javascript into code variable.
  var code = 'var ' + generator.getVariableName(block.getFieldValue('VAR')) + ' = new Array(' + text_siz + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcvm_mem_array_ref'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_idx = generator.valueToCode(block, 'IDX', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = generator.getVariableName(block.getFieldValue('VAR')) + '[' + value_idx + ']';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcvm_mem_array_set'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_idx = generator.valueToCode(block, 'IDX', javascript.Order.NONE);
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = generator.getVariableName(block.getFieldValue('VAR')) + '[' + value_idx + '] = ' + value_val + '\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_controls_forc'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_from = generator.valueToCode(block, 'FROM', javascript.Order.NONE);
  var value_bool = generator.valueToCode(block, 'BOOL', javascript.Order.NONE);
  var value_with = generator.valueToCode(block, 'WITH', javascript.Order.NONE);
  var statements_do = generator.statementToCode(block, 'DO');
  // TODO: Assemble javascript into code variable.
  var code = 'for (' + generator.getVariableName(block.getFieldValue('VAR')) + ' = ' + value_from + '; ' + value_bool + '; ' + generator.getVariableName(block.getFieldValue('VAR')) + ' = ' + value_with + ') {\n' + statements_do + '}\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_controls_dorept'] = function(block, generator) {
  var statements_do = generator.statementToCode(block, 'DO');
  var dropdown_mode = block.getFieldValue('MODE');
  var value_bool = generator.valueToCode(block, 'BOOL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'do {\n' + statements_do + '} while ';
if (dropdown_mode.toLowerCase()=='until')
	code +=  '(!(' + value_bool + '));\n';
else
	code += '(' + value_bool + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_controls_loop'] = function(block, generator) {
  var statements_do = generator.statementToCode(block, 'DO');
  // TODO: Assemble javascript into code variable.
  var code = 'loop {\n' + statements_do + '}\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_math_binary'] = function(block, generator) {
  var value_a = generator.valueToCode(block, 'A', javascript.Order.ATOMIC);
  var dropdown_op = block.getFieldValue('OP');
  var value_b = generator.valueToCode(block, 'B', javascript.Order.ATOMIC);
  // TODO: Assemble javascript into code variable.
  var code = value_a + ' ' + dropdown_op + ' ' + value_b;
if (dropdown_op.toLowerCase()=='min' || dropdown_op.toLowerCase()=='max')
	code = 'Math.' + dropdown_op.toLowerCase() + ' (' + value_a + ',' + value_b + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.NONE];
};

javascript.javascriptGenerator.forBlock['mcoc_math_bit_operation'] = function(block, generator) {
  var value_a = generator.valueToCode(block, 'A', javascript.Order.ATOMIC);
  var dropdown_op = block.getFieldValue('OP');
  var value_b = generator.valueToCode(block, 'B', javascript.Order.ATOMIC);
  // TODO: Assemble javascript into code variable.
  var code = value_a + ' ' + dropdown_op.replace('[>>]','[>>]/*obsolete*/') + ' ' + value_b;
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.NONE];
};

javascript.javascriptGenerator.forBlock['mcoc_math_unary'] = function(block, generator) {
  var dropdown_op = block.getFieldValue('OP');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.ATOMIC);
  // TODO: Assemble javascript into code variable.
if (dropdown_op.toLowerCase() == 'r6+')
	dropdown_op = 'cpu.r6+';
  var code = dropdown_op + ' ' + value_val;
if (dropdown_op.toLowerCase() == 'sq')
	code = value_val + ' * ' + value_val;
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.NONE];
};

javascript.javascriptGenerator.forBlock['mcoc_math_func'] = function(block, generator) {
  var dropdown_fnc = block.getFieldValue('FNC');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_fnc.toLowerCase()=='sgn')
	dropdown_fnc = 'sign';
  var code = 'Math.' + dropdown_fnc.toLowerCase() + ' (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_math_func2'] = function(block, generator) {
  var dropdown_fnc = block.getFieldValue('FNC');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'Math.' + dropdown_fnc.toLowerCase() + ' (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_math_func3'] = function(block, generator) {
  var dropdown_fnc = block.getFieldValue('FNC');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'Math.' + dropdown_fnc.toLowerCase() + ' (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_math_ascii'] = function(block, generator) {
  var text_txt = block.getFieldValue('TXT');
  // TODO: Assemble javascript into code variable.
  var code = generator.quote_(text_txt) + '.charCodeAt (0)';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_math_label'] = function(block, generator) {
  var text_name = block.getFieldValue('NAME');
  var text_val = block.getFieldValue('VAL');
  // TODO: Assemble javascript into code variable.
  var code = 'const ' + text_name + ' = ' + text_val + ';\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_math_number'] = function(block, generator) {
  var text_num = block.getFieldValue('NUM');
  // TODO: Assemble javascript into code variable.
  var code = text_num;
if (text_num.match(/[+\-*/%!|&^~<>]/)!=null)
	code = '(' + code + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_math_post'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var dropdown_op = block.getFieldValue('OP');
  // TODO: Assemble javascript into code variable.
  var code = generator.getVariableName(block.getFieldValue('VAR')) + dropdown_op;
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.NONE];
};

javascript.javascriptGenerator.forBlock['mcoc_pack'] = function(block, generator) {
  var checkbox_enb = block.getFieldValue('ENB') === 'TRUE';
  var statements_pac = generator.statementToCode(block, 'PAC');
  // TODO: Assemble javascript into code variable.
  var code = 'if (' + checkbox_enb + ') {\n' + statements_pac + '}\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_swap'] = function(block, generator) {
  var variable_a = generator.nameDB_.getName(block.getFieldValue('A'), Blockly.Variables.NAME_TYPE);
  var variable_b = generator.nameDB_.getName(block.getFieldValue('B'), Blockly.Variables.NAME_TYPE);
  // TODO: Assemble javascript into code variable.
  var code = 'swap (' + generator.getVariableName(block.getFieldValue('A')) + ',' + generator.getVariableName(block.getFieldValue('B')) + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_task'] = function(block, generator) {
  var dropdown_task = block.getFieldValue('TASK');
  var statements_do = generator.statementToCode(block, 'DO');
  // TODO: Assemble javascript into code variable.
  var code = 'function _task_' + dropdown_task + ' () {\n' + statements_do + '}';
code = generator.scrub_(block, code);
generator.definitions_['%_task_' + dropdown_task] = code;
  return null;
};

javascript.javascriptGenerator.forBlock['mcoc_text_label'] = function(block, generator) {
  var text_name = block.getFieldValue('NAME');
  var text_text = block.getFieldValue('TEXT');
  // TODO: Assemble javascript into code variable.
  var code = 'const lab_' + text_name + ' = ' + generator.quote_(text_text) + ';\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_text_atoi'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'parseInt (' + value_val + ',10)';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_text_itoa'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.ATOMIC);
  // TODO: Assemble javascript into code variable.
  var code =value_val + '.toString (10)';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_text_itox'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.ATOMIC);
  var number_digits = block.getFieldValue('digits');
  // TODO: Assemble javascript into code variable.
  var code = '(\'0000000\' + ' + value_val + '.toString(16)).substr (-' + number_digits + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_text_xtoi'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'parseInt (' + value_val + ',16)';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_compare_left'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_ofst = generator.valueToCode(block, 'OFST', javascript.Order.NONE);
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'strncmp (' + generator.getVariableName(block.getFieldValue('VAR')) + '.substr (' + value_ofst + '),' + value_val + ',strlen (' + value_val + ')) == 0';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_ctoa'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'String.fromCharCode (' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_find'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_ofst = generator.valueToCode(block, 'OFST', javascript.Order.NONE);
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'strchr (' + generator.getVariableName(block.getFieldValue('VAR')) + '.offset (' + value_ofst + '),' + value_val + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_get_char'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_ofst = generator.valueToCode(block, 'OFST', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = generator.getVariableName(block.getFieldValue('VAR')) + '.charCodeAt (' + value_ofst + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_label'] = function(block, generator) {
  var text_lab = block.getFieldValue('LAB');
  var value_ofst = generator.valueToCode(block, 'OFST', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = text_lab + '.offset (' + value_ofst + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_pointer'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_ofst = generator.valueToCode(block, 'OFST', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = generator.getVariableName(block.getFieldValue('VAR')) + '.substr (' + value_ofst + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_string_set'] = function(block, generator) {
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  var value_txt = generator.valueToCode(block, 'TXT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'strcpy (' + generator.getVariableName(block.getFieldValue('VAR')) + '.offset (' + value_val + '),' + value_txt + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_port_read'] = function(block, generator) {
  var value_pin = generator.valueToCode(block, 'PIN', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'digitalRead (' + value_pin + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_port_write'] = function(block, generator) {
  var value_pin = generator.valueToCode(block, 'PIN', javascript.Order.NONE);
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'digitalWrite (' + value_pin + ',' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_delay'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'delay (' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_delay_cyc'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'delayTicks (' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_delay_us'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'delayMicroseconds (' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_micros'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'micros ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_millis'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'millis ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_sytm_ticks'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'ticks ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_uart_avail'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'uart.avail ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_uart_get'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  // TODO: Assemble javascript into code variable.
  var code = 'uart.get_' + dropdown_siz.toLowerCase() + ' ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_uart_put'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'uart.put_' + dropdown_siz.toLowerCase() + ' (' + value_val + ')\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_uart_getline'] = function(block, generator) {
  // TODO: Assemble javascript into code variable.
  var code = 'uart.get_line ()';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_uart_print'] = function(block, generator) {
  var value_txt = generator.valueToCode(block, 'TXT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'uart.print (' + value_txt + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_uart_println'] = function(block, generator) {
  var value_txt = generator.valueToCode(block, 'TXT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'uart.println (' + value_txt + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_wire_frame'] = function(block, generator) {
  var value_cmd = generator.valueToCode(block, 'CMD', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'wire.frame (' + value_cmd + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_wire_idend'] = function(block, generator) {
  var value_id = generator.valueToCode(block, 'ID', javascript.Order.NONE);
  var dropdown_end = block.getFieldValue('END');
  // TODO: Assemble javascript into code variable.
  var code = 'wire.slave (' + value_id + ',' + dropdown_end.toLowerCase() + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_wire_init'] = function(block, generator) {
  var value_freq = generator.valueToCode(block, 'FREQ', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'wire.initialize (' + value_freq + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_wire_read'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_cmd = generator.valueToCode(block, 'CMD', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'wire.read_' + dropdown_siz.toLowerCase() + ' (' + value_cmd + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_wire_write'] = function(block, generator) {
  var dropdown_siz = block.getFieldValue('SIZ');
  var value_cmd = generator.valueToCode(block, 'CMD', javascript.Order.NONE);
  var value_dat = generator.valueToCode(block, 'DAT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'wire.write_' + dropdown_siz.toLowerCase() + ' (' + value_cmd + ',' + value_dat + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_affine'] = function(block, generator) {
  var checkbox_inv = block.getFieldValue('INV') === 'TRUE';
  var checkbox_flph = block.getFieldValue('FLPH') === 'TRUE';
  var checkbox_flpv = block.getFieldValue('FLPV') === 'TRUE';
  var checkbox_rot1 = block.getFieldValue('ROT1') === 'TRUE';
  var checkbox_rot2 = block.getFieldValue('ROT2') === 'TRUE';
  var checkbox_rot3 = block.getFieldValue('ROT3') === 'TRUE';
  var checkbox_dbl = block.getFieldValue('DBL') === 'TRUE';
  // TODO: Assemble javascript into code variable.
var		afn='0b_';
afn += (checkbox_inv)? '1': '0';
afn += '_';
afn += (checkbox_flph)? '1': '0';
afn += (checkbox_flpv)? '1': '0';
afn += '_';
afn += (checkbox_rot1)? '1': '0';
afn += (checkbox_rot2)? '1': '0';
afn += (checkbox_rot3)? '1': '0';
afn += '_';
afn += (checkbox_dbl)? '1': '0';
  var code = 'stft.affine (' + afn + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_bright'] = function(block, generator) {
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.bright (' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_color'] = function(block, generator) {
  var value_fg = generator.valueToCode(block, 'FG', javascript.Order.NONE);
  var value_bg = generator.valueToCode(block, 'BG', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.color (' + value_fg + ',' + value_bg + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_draw_box'] = function(block, generator) {
  var dropdown_opt = block.getFieldValue('OPT');
  var value_px1 = generator.valueToCode(block, 'PX1', javascript.Order.NONE);
  var value_py1 = generator.valueToCode(block, 'PY1', javascript.Order.NONE);
  var value_px2 = generator.valueToCode(block, 'PX2', javascript.Order.NONE);
  var value_py2 = generator.valueToCode(block, 'PY2', javascript.Order.NONE);
  var value_pix = generator.valueToCode(block, 'PIX', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.box_' + dropdown_opt.toLowerCase() + ' (' + value_px1 + ',' + value_py1 + ',' + value_px2 + ',' + value_py2 + ',' + value_pix + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_draw_dot'] = function(block, generator) {
  var value_px = generator.valueToCode(block, 'PX', javascript.Order.NONE);
  var value_py = generator.valueToCode(block, 'PY', javascript.Order.NONE);
  var value_pix = generator.valueToCode(block, 'PIX', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.dot (' + value_px + ',' + value_py + ',' + value_pix + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_getpix'] = function(block, generator) {
  var value_px = generator.valueToCode(block, 'PX', javascript.Order.NONE);
  var value_py = generator.valueToCode(block, 'PY', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.get (' + value_px + ',' + value_py + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_stft_init'] = function(block, generator) {
  var dropdown_cmnd = block.getFieldValue('CMND');
  // TODO: Assemble javascript into code variable.
if (dropdown_cmnd.toLowerCase()=='init')
	dropdown_cmnd = 'initialize';
  var code = 'stft.' + dropdown_cmnd.toLowerCase() + ' ();\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_locate'] = function(block, generator) {
  var value_cx = generator.valueToCode(block, 'CX', javascript.Order.NONE);
  var value_cy = generator.valueToCode(block, 'CY', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.locate (' + value_cx + ',' + value_cy + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_pixel'] = function(block, generator) {
  var value_r8 = generator.valueToCode(block, 'R8', javascript.Order.NONE);
  var value_g8 = generator.valueToCode(block, 'G8', javascript.Order.NONE);
  var value_b8 = generator.valueToCode(block, 'B8', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.pixel (' + value_r8 + ',' + value_g8 + ',' + value_b8 + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_stft_pixel_hsv'] = function(block, generator) {
  var value_h9 = generator.valueToCode(block, 'H9', javascript.Order.NONE);
  var value_s8 = generator.valueToCode(block, 'S8', javascript.Order.NONE);
  var value_v8 = generator.valueToCode(block, 'V8', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.pixel_hsv (' + value_h9 + ',' + value_s8 + ',' + value_v8 + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_stft_pixel_embed'] = function(block, generator) {
  var dropdown_pix = block.getFieldValue('PIX');
  // TODO: Assemble javascript into code variable.
  var code = dropdown_pix;
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};

javascript.javascriptGenerator.forBlock['mcoc_stft_print'] = function(block, generator) {
  var value_txt = generator.valueToCode(block, 'TXT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'stft.print (' + value_txt + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_stft_transf'] = function(block, generator) {
  var dropdown_dir = block.getFieldValue('DIR');
  var value_siz = generator.valueToCode(block, 'SIZ', javascript.Order.NONE);
  var value_ptr = generator.valueToCode(block, 'PTR', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
if (dropdown_dir.toLowerCase()=='recv')
	dropdown_dir = 'receive';
  var code = 'stft.' + dropdown_dir.toLowerCase() + ' (' + value_siz + ',' + value_ptr + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sndg_init'] = function(block, generator) {
  var dropdown_chn = block.getFieldValue('CHN');
  var value_val = generator.valueToCode(block, 'VAL', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'sndg' + dropdown_chn + '.initialize (' + value_val + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sndg_play_mml'] = function(block, generator) {
  var dropdown_chn = block.getFieldValue('CHN');
  var value_txt = generator.valueToCode(block, 'TXT', javascript.Order.NONE);
  // TODO: Assemble javascript into code variable.
  var code = 'sndg' + dropdown_chn + '.play_mml (' + value_txt + ');\n';
  return code;
};

javascript.javascriptGenerator.forBlock['mcoc_sndg_play_ptr'] = function(block, generator) {
  var dropdown_chn = block.getFieldValue('CHN');
  var variable_var = generator.nameDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  // TODO: Assemble javascript into code variable.
  var code = 'sndg' + dropdown_chn + '.play_ptr (' + generator.getVariableName(block.getFieldValue('VAR')) + ')';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, javascript.Order.ATOMIC];
};
