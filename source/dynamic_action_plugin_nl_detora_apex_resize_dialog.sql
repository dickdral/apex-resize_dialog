set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>5853461301138549
,p_default_application_id=>1400
,p_default_owner=>'G2S_O'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_resize_dialog
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(30438938711500818)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.RESIZE_DIALOG'
,p_display_name=>'Resize Dialog'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#apexresizedialog.js'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Resize Dialog',
' * Version: 1.0 (05-01-2016)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'FUNCTION render_resize_dialog(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                               p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result          apex_plugin.t_dynamic_action_render_result;',
'  l_center_dialog   varchar2(100)  := p_dynamic_action.attribute_01;',
'  l_margin          number         := p_dynamic_action.attribute_02;',
'  --',
'BEGIN',
'  -- attribute defaults',
'  l_center_dialog   := nvl(l_center_dialog',
'                          ,''false'');',
'  l_margin          := nvl(l_margin',
'                          , 20);',
'  --',
'  l_result.javascript_function := ''apexresizedialog.doIt'';',
'  l_result.attribute_01        := l_center_dialog;',
'  l_result.attribute_02        := l_margin;',
'  --',
'  RETURN l_result;',
'  --',
'END render_resize_dialog;'))
,p_render_function=>'render_resize_dialog'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30598436091798541)
,p_plugin_id=>wwv_flow_api.id(30438938711500818)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Center Dialog?'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30599522124800648)
,p_plugin_attribute_id=>wwv_flow_api.id(30598436091798541)
,p_display_sequence=>10
,p_display_value=>'No'
,p_return_value=>'false'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30599955129801824)
,p_plugin_attribute_id=>wwv_flow_api.id(30598436091798541)
,p_display_sequence=>20
,p_display_value=>'Yes'
,p_return_value=>'true'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30576045085549719)
,p_plugin_id=>wwv_flow_api.id(30438938711500818)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Margin'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'20'
,p_unit=>'px'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'(Outer) margin for dialog'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F204150455820526573697A65204469616C6F670A2F2F20417574686F723A204469636B204472616C20284465746F7261290A2F2F2056657273696F6E3A20312E300A0A2F2F20676C6F62616C206E616D6573706163650A7661722061706578726573';
wwv_flow_api.g_varchar2_table(2) := '697A656469616C6F67203D207B0A0A726573697A655F6469616C6F673A2066756E6374696F6E20282063656E7465725F6469616C6F672C206469616C6F675F6D617267696E20290A7B0A2020636F6E736F6C652E6C6F672827706572666F726D20646961';
wwv_flow_api.g_varchar2_table(3) := '6C6F6720726573697A6527293B0A20200A20207661722068656164657220203D202428272E742D4469616C6F672D68656164657227293B0A20207661722068656967687420203D207061727365496E74282428686561646572292E686569676874282929';
wwv_flow_api.g_varchar2_table(4) := '3B20200A202020200A202076617220626F6479202020203D202428272E742D4469616C6F672D626F647927293B0A20207661722070616464696E67203D207061727365496E74282428626F6479292E637373282770616464696E672D746F70272929202B';
wwv_flow_api.g_varchar2_table(5) := '207061727365496E74282428626F6479292E637373282770616464696E672D626F74746F6D2729293B0A2020686569676874202B3D2070616464696E673B0A202020200A202076617220636F6E7461696E6572203D202428626F6479292E66696E642827';
wwv_flow_api.g_varchar2_table(6) := '2E636F6E7461696E657227292E666972737428293B0A20206865696768742020202B3D207061727365496E74282428636F6E7461696E6572292E6865696768742829293B20200A202020200A202076617220666F6F746572202020203D202428272E742D';
wwv_flow_api.g_varchar2_table(7) := '4469616C6F672D666F6F74657227293B0A20206865696768742020202B3D207061727365496E74282428666F6F746572292E6865696768742829293B20200A0A2020766172206469616C6F675F77696E646F77202020203D2077696E646F772E70617265';
wwv_flow_api.g_varchar2_table(8) := '6E742E2428272E75692D6469616C6F6727293B0A2020766172206469616C6F675F7469746C6562617220203D2077696E646F772E706172656E742E2428272E75692D6469616C6F672D7469746C6562617227293B0A2020766172206469616C6F675F636F';
wwv_flow_api.g_varchar2_table(9) := '6E7461696E6572203D2077696E646F772E706172656E742E2428272E75692D6469616C6F672D636F6E74656E7427293B0A0A202076617220706172656E745F686569676874202020203D2077696E646F772E706172656E742E696E6E6572486569676874';
wwv_flow_api.g_varchar2_table(10) := '3B0A2020766172207469746C656261725F68656967687420203D207061727365496E74286469616C6F675F7469746C656261722E63737328276865696768742729293B0A2020766172206469616C6F675F746F70202020202020203D207061727365496E';
wwv_flow_api.g_varchar2_table(11) := '74286469616C6F675F77696E646F772E6373732827746F702729293B0A0A202063656E7465725F6469616C6F67203D20282063656E7465725F6469616C6F67203D3D2074727565207C7C2063656E7465725F6469616C6F67203D3D2066616C7365202920';
wwv_flow_api.g_varchar2_table(12) := '3F2063656E7465725F6469616C6F67203A2066616C73653B0A20206469616C6F675F6D617267696E203D2028206469616C6F675F6D617267696E203D3D20756E646566696E6564207C7C206469616C6F675F6D617267696E203D3D206E756C6C2029203F';
wwv_flow_api.g_varchar2_table(13) := '203230203A207061727365496E74286469616C6F675F6D617267696E293B0A2020636F6E736F6C652E6C6F672863656E7465725F6469616C6F672C6469616C6F675F6D617267696E2C686569676874293B0A20200A2020696620282063656E7465725F64';
wwv_flow_api.g_varchar2_table(14) := '69616C6F6720290A2020202020207B0A202020202020202020202F2F20686F77206D7563682068656967687420697320617661696C61626C653F0A2020202020202020202076617220617661696C61626C655F686569676874203D20706172656E745F68';
wwv_flow_api.g_varchar2_table(15) := '6569676874202D207469746C656261725F686569676874202D20322A206469616C6F675F6D617267696E3B0A0A202020202020202020202F2F2061646A75737420686569676874206966206E65636573736172790A202020202020202020206865696768';
wwv_flow_api.g_varchar2_table(16) := '7420203D202820686569676874203C20617661696C61626C655F6865696768742029203F20686569676874203A20617661696C61626C655F6865696768743B0A0A202020202020202020202F2F2064657465726D696E6520616E642073657420706F7369';
wwv_flow_api.g_varchar2_table(17) := '74696F6E0A2020202020202020202076617220746F70203D202820706172656E745F686569676874202D20686569676874202D207469746C656261725F6865696768742029202F20323B0A202020202020202020206469616C6F675F77696E646F772E63';
wwv_flow_api.g_varchar2_table(18) := '73732827746F70272C746F70293B0A0A2020202020207D0A2020656C73650A2020202020207B202020202020202020200A202020202020202020202F2F20686F77206D7563682068656967687420697320617661696C61626C653F0A2020202020202020';
wwv_flow_api.g_varchar2_table(19) := '202076617220617661696C61626C655F686569676874203D20706172656E745F686569676874202D206469616C6F675F746F70202D207469746C656261725F686569676874202D206469616C6F675F6D617267696E3B0A636F6E736F6C652E6C6F672827';
wwv_flow_api.g_varchar2_table(20) := '706172656E745F686569676874202D206469616C6F675F746F70202D207469746C656261725F6865696768743D272C706172656E745F6865696768742C6469616C6F675F746F702C7469746C656261725F686569676874293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(21) := '2F2F2061646A75737420686569676874206966206E65636573736172790A20202020202020202020686569676874203D202820686569676874203C3D20617661696C61626C655F6865696768742029203F20686569676874203A20617661696C61626C65';
wwv_flow_api.g_varchar2_table(22) := '5F6865696768743B0A2020202020207D0A0A092020636F6E736F6C652E6C6F67286865696768742C6469616C6F675F636F6E7461696E6572293B0A202020200A202024286469616C6F675F636F6E7461696E6572292E6865696768742868656967687429';
wwv_flow_api.g_varchar2_table(23) := '3B0A7D2C0A0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A20202020646F49743A2066756E6374696F6E2829207B0A20202020202020202F2F20706C7567696E206174747269627574';
wwv_flow_api.g_varchar2_table(24) := '65730A202020202020202076617220646154686973203D20746869733B0A0909636F6E736F6C652E6C6F6728276461546869732E616374696F6E2E61747472696275746530313D272C6461546869732E616374696F6E2E61747472696275746530312C20';
wwv_flow_api.g_varchar2_table(25) := '747970656F66206461546869732E616374696F6E2E6174747269627574653031293B0A20202020202020207661722063656E7465725F6469616C6F67203D2028206461546869732E616374696F6E2E6174747269627574653031203D3D20227472756522';
wwv_flow_api.g_varchar2_table(26) := '2029203F2074727565203A2066616C73653B0A0909766172206D617267696E203D206461546869732E616374696F6E2E61747472696275746530323B0A20202020202020202F2F204C6F6767696E670A202020202020202076617220764C6F6767696E67';
wwv_flow_api.g_varchar2_table(27) := '203D20747275653B0A202020202020202069662028764C6F6767696E6729207B0A202020202020202020202020636F6E736F6C652E6C6F672827526573697A65204469616C6F673A2063656E7465725F6469616C6F673D272C2063656E7465725F646961';
wwv_flow_api.g_varchar2_table(28) := '6C6F67293B0A202020202020202020202020636F6E736F6C652E6C6F672827526573697A65204469616C6F673A206D617267696E3D272C206D617267696E293B0A20202020202020207D0A202020202020202061706578726573697A656469616C6F672E';
wwv_flow_api.g_varchar2_table(29) := '726573697A655F6469616C6F672863656E7465725F6469616C6F672C6D617267696E293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31310462299179805)
,p_plugin_id=>wwv_flow_api.id(30438938711500818)
,p_file_name=>'apexresizedialog.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
