prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>26023280745202423227
,p_default_application_id=>125235
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ESTUDO2022'
);
end;
/
 
prompt APPLICATION 125235 - Sistema de Vendas
--
-- Application Export:
--   Application:     125235
--   Name:            Sistema de Vendas
--   Date and Time:   17:46 Saturday January 7, 2023
--   Exported By:     KAUE1BOMFIM@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 7
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00007
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>7);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Venda'
,p_alias=>'VENDA'
,p_step_title=>'Venda'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'KAUE1BOMFIM@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230107170804'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37380763325330603919)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(31599870046417062832)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(31599754806036062787)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(31599932113310062858)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37380763907849603919)
,p_plug_name=>'Venda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(31599847817673062824)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VENDA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Venda'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(37380764017521603919)
,p_name=>'Venda'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAUE1BOMFIM@GMAIL.COM'
,p_internal_uid=>37380764017521603919
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37380764688502604020)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37380765021540604021)
,p_db_column_name=>'CLIENTE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cliente ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37380765488063604021)
,p_db_column_name=>'DATA_VENDA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Data Venda'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37380767887200604754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'373807679'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CLIENTE_ID:DATA_VENDA'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
