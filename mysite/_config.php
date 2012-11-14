<?php

global $project;
$project = 'mysite';

global $databaseConfig;
/*$databaseConfig = array(
	"type" => "MySQLDatabase",
	"server" => "ebro.imu.uiowa.edu:3306", 
	"username" => "imu_silverstripe", 
	"password" => "mink0.453JF", 
	"database" => "imu_silverstripe",
);*/
$databaseConfig = array(
	"type" => "MySQLDatabase",
	"server" => "localhost", 
	"username" => "root", 
	"password" =>'root',
	"database" => "imu",
);

// Sites running on the following servers will be
// run in development mode. See
// http://doc.silverstripe.com/doku.php?id=devmode
// for a description of what dev mode does.
Director::set_dev_servers(array(
	'localhost',
	'127.0.0.1', 
	
));
//test
Director::set_environment_type("live");
//Director::set_environment_type("dev");

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.com/cms-themes-and-skin
SSViewer::set_theme('imu4');
Requirements::set_write_js_to_body(false);
Object::add_extension("LeftAndMain", "MyLeftAndMainDecorator");
Object::add_extension("SiteTree", "FilesystemPublisher('cache/', 'html')");
HtmlEditorConfig::get('cms')->setOption('verify_html', 'false');
HtmlEditorConfig::get('cms')->setOptions(array(
	'valid_elements' => "@[id|class|style|title],#a[id|rel|rev|dir|tabindex|accesskey|type|name|href|target|title|class],-strong/-b[class],-em/-i[class],-strike[class],-u[class],#p[id|dir|class|align|style],-ol[class],-ul[class],-li[class],br,img[id|dir|longdesc|usemap|class|src|border|alt=|title|width|height|align],-sub[class],-sup[class],-blockquote[dir|class],-table[border=0|cellspacing|cellpadding|width|height|class|align|summary|dir|id|style],-tr[id|dir|class|rowspan|width|height|align|valign|bgcolor|background|bordercolor|style],tbody[id|class|style],thead[id|class|style],tfoot[id|class|style],#td[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],-th[id|dir|class|colspan|rowspan|width|height|align|valign|scope|style],caption[id|dir|class],-div[id|dir|class|align|style],-span[class|align|style],-pre[class|align],address[class|align],-h1[id|dir|class|align|style],-h2[id|dir|class|align|style],-h3[id|dir|class|align|style],-h4[id|dir|class|align|style],-h5[id|dir|class|align|style],-h6[id|dir|class|align|style],hr[class],dd[id|class|title|dir],dl[id|class|title|dir],dt[id|class|title|dir],@[id,style,class]",
	'extended_valid_elements' => "foo,img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],iframe[src|name|width|height|align|frameborder|marginwidth|marginheight|scrolling],object[width|height|data|type],param[name|value],map[class|name|id],area[shape|coords|href|target|alt]"
));

RecaptchaField::$public_api_key = '6LdulrwSAAAAAFqd8GTD-A8m3taHaT0mnCZj51d8';
RecaptchaField::$private_api_key = '6LdulrwSAAAAAMFcu9FUg-l31fYiz5lpyZGie4DZ';
SpamProtectorManager::set_spam_protector("RecaptchaProtector");
//UploadifyField::show_debug();
// enable nested URLs for this site (e.g. page/sub-page/)
// SiteTree::enable_nested_urls();
SortableDataObject::add_sortable_class('HomeFeatureObject');
SortableDataObject::add_sortable_class('HomeOrgObject');
SortableDataObject::add_sortable_class('StudentLifeStaffMember');

?>

