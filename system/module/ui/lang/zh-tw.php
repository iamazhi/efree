<?php
/**
 * The ui module zh-tw file of chanzhiEPS.
 *
 * @copyright   Copyright 2013-2013 青島息壤網絡信息有限公司 (QingDao XiRang Network Infomation Co,LTD www.xirangit.com)
 * @license     http://api.chanzhi.org/goto.php?item=license
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     ui
 * @version     $Id$
 * @link        http://www.chanzhi.org
 */
$lang->ui->common       = "站點";

$lang->ui->logo            = 'Logo';
$lang->ui->setLogo         = "Logo設置";
$lang->ui->setTemplate     = '模板設置';
$lang->ui->installTemplate = '上傳模板';
$lang->ui->setTheme        = '主題設置';
$lang->ui->setFavicon      = "Favicon設置";
$lang->ui->setBaseStyle    = "全局樣式設置";

$lang->ui->noStyleTag        = "請填寫全局CSS樣式代碼，不需要&lt;style&gt;&lt;/style&gt;標籤";
$lang->ui->setLogoFailed     = "設置Logo失敗";
$lang->ui->noSelectedFile    = "沒有選擇圖片";
$lang->ui->notAlloweFileType = "請選擇正確的%s檔案.";
$lang->ui->suitableLogoSize  = '最佳高度範圍：50px~80px，最佳寬度範圍：80px~240px';

$lang->ui->favicon = new stdclass();
$lang->ui->favicon->help  = "幫助";

$lang->ui->template = new stdclass();
$lang->ui->template->name            = '名稱';
$lang->ui->template->version         = '版本';
$lang->ui->template->author          = '作者';
$lang->ui->template->charge          = '費用';
$lang->ui->template->chanzhiVersion  = '兼容版本';
$lang->ui->template->desc            = '簡介';
$lang->ui->template->theme           = '主題';
$lang->ui->template->license         = '版權';
$lang->ui->template->availableThemes = '<strong>%s</strong> 款可用主題';
$lang->ui->template->currentTheme    = '正在使用 <strong>%s</strong>';
$lang->ui->template->changeTheme     = '切換主題';
$lang->ui->template->apply           = '應用模板';
$lang->ui->template->current         = '當前模板';
$lang->ui->template->conflicts       = "警告！已有名為<strong> %s </strong> 的模板。";
$lang->ui->template->override        = "覆蓋並安裝";
$lang->ui->template->reupload        = "重新上傳";
$lang->ui->template->installSuccess  = '恭喜，模板上傳成功';
$lang->ui->template->manageTemplate  = '設置模板';
$lang->ui->template->manageBlock     = '設置區塊';
$lang->ui->template->enable          = '啟用';
$lang->ui->template->reload          = '刷新頁面';
$lang->ui->template->doInstall       = '確認安裝';
$lang->ui->template->info            = '模板信息';

$lang->ui->template->error = new stdclass();
$lang->ui->template->error->paths    = '目錄權限錯誤';
$lang->ui->template->error->exists   = "<p>目錄%s不存在</p>";
$lang->ui->template->error->writable = "<p>目錄%s不可寫</p>";

$lang->ui->template->commands = new stdclass();
$lang->ui->template->commands->execute  = '如果是Linux系統，請執行以下命令繼續';
$lang->ui->template->commands->exists   = "mkdir -p %s<br/>";
$lang->ui->template->commands->writable = "chmod 777 -R %s<br/>"; 

$lang->ui->customtheme                                 = '自定義主題';
$lang->ui->custom                                      = '自定義';
$lang->ui->themeSaved                                  = '主題配置已保存';
$lang->ui->theme                                       = new stdclass();
$lang->ui->theme->ajustColor                           = '顏色調整';
$lang->ui->theme->light                                = '亮度';
$lang->ui->theme->lightAjustList['-25%']               = '-25%';
$lang->ui->theme->lightAjustList['-20%']               = '-20%';
$lang->ui->theme->lightAjustList['-15%']               = '-15%';
$lang->ui->theme->lightAjustList['-12%']               = '-12%';
$lang->ui->theme->lightAjustList['-10%']               = '-10%';
$lang->ui->theme->lightAjustList['-8%']                = '-8%';
$lang->ui->theme->lightAjustList['-5%']                = '-5%';
$lang->ui->theme->lightAjustList['-2%']                = '-2%';
$lang->ui->theme->lightAjustList['0%']                 = '0%';
$lang->ui->theme->lightAjustList['2%']                 = '+2%';
$lang->ui->theme->lightAjustList['5%']                 = '+5%';
$lang->ui->theme->lightAjustList['8%']                 = '+8%';
$lang->ui->theme->lightAjustList['10%']                = '+10%';
$lang->ui->theme->lightAjustList['12%']                = '+12%';
$lang->ui->theme->lightAjustList['15%']                = '+15%';
$lang->ui->theme->lightAjustList['20%']                = '+20%';
$lang->ui->theme->lightAjustList['25%']                = '+25%';
$lang->ui->theme->colorset                             = '配色';
$lang->ui->theme->primaryColor                         = '基色';
$lang->ui->theme->backColor                            = '背景色';
$lang->ui->theme->foreColor                            = '前景色';
$lang->ui->theme->secondaryColor                       = '輔助色';
$lang->ui->theme->basicStyle                           = '基本樣式';
$lang->ui->theme->layout                               = '佈局';
$lang->ui->theme->head                                 = '頭部';
$lang->ui->theme->body                                 = '主體';
$lang->ui->theme->padding                              = '內邊距';
$lang->ui->theme->size                                 = '尺寸';
$lang->ui->theme->sizeTip                              = '預設單位為像素，如1px';
$lang->ui->theme->horizontal                           = '水平';
$lang->ui->theme->vertical                             = '垂直';
$lang->ui->theme->content                              = '內容';
$lang->ui->theme->foot                                 = '底部';
$lang->ui->theme->none                                 = '無';
$lang->ui->theme->colorTip                             = '如: red 或 #FFF';
$lang->ui->theme->color                                = '顏色';
$lang->ui->theme->transparent                          = '透明';
$lang->ui->theme->width                                = '寬度';
$lang->ui->theme->radius                               = '圓角大小';
$lang->ui->theme->border                               = '邊框';
$lang->ui->theme->borderStyle                          = '邊框樣式';
$lang->ui->theme->borderStyleList['none']              = '無邊框';
$lang->ui->theme->borderStyleList['solid']             = '實線';
$lang->ui->theme->borderStyleList['dashed']            = '虛線';
$lang->ui->theme->borderStyleList['dotted']            = '點線';
$lang->ui->theme->borderStyleList['double']            = '雙線條';
$lang->ui->theme->image                                = '圖片';
$lang->ui->theme->imageRepeat                          = '重複方式';
$lang->ui->theme->imageRepeatList['repeat']            = '預設';
$lang->ui->theme->imageRepeatList['repeat']            = '重複';
$lang->ui->theme->imageRepeatList['repeat-x']          = 'X軸重複';
$lang->ui->theme->imageRepeatList['repeat-y']          = 'Y軸重複';
$lang->ui->theme->imageRepeatList['no-repeat']         = '不重複';
$lang->ui->theme->position                             = '位置';
$lang->ui->theme->positionTip                          = '如: 100px, 50%, left, top, center';
$lang->ui->theme->positionX                            = '水平位置';
$lang->ui->theme->positionY                            = '垂直位置';
$lang->ui->theme->background                           = '背景';
$lang->ui->theme->pageBackground                       = '頁面背景';
$lang->ui->theme->backImage                            = '背景圖片';
$lang->ui->theme->backImageTip                         = '圖片地址，如: image.jpg';
$lang->ui->theme->text                                 = '文字';
$lang->ui->theme->textStyle                            = '文字樣式';
$lang->ui->theme->pageText                             = '頁面文字';
$lang->ui->theme->font                                 = '字型';
$lang->ui->theme->fontWeight                           = '字型加粗';
$lang->ui->theme->fontWeightList['inherit']            = '預設';
$lang->ui->theme->fontWeightList['normal']             = '正常';
$lang->ui->theme->fontWeightList['bold']               = '加粗';
$lang->ui->theme->fontSize                             = '字型大小';
$lang->ui->theme->fontList['inherit']                         = '預設';
$lang->ui->theme->fontList['"宋體"']                     = '宋體';
$lang->ui->theme->fontList['"仿宋"']                     = '仿宋';
$lang->ui->theme->fontList['"黑體"']                     = '黑體';
$lang->ui->theme->fontList['"微軟雅黑"']                   = '微軟雅黑';
$lang->ui->theme->fontList['Arial']                    = 'Arial';
$lang->ui->theme->fontList['"Times New Roman"']        = 'Times New Roman';
$lang->ui->theme->fontList['Courier']                  = 'Courier';
$lang->ui->theme->fontList['Console']                  = 'Console';
$lang->ui->theme->fontList['Tahoma']                   = 'Tahoma';
$lang->ui->theme->fontList['Verdana']                  = 'Verdana';
$lang->ui->theme->fontList['ZenIcon']                  = '表徵圖字型 ZenIcon';
$lang->ui->theme->borderRadius                         = '圓角';
$lang->ui->theme->colorPlates                          = '#333333|#000000|#CA1407|#45872B|#148D00|#F25D03|#2286D2|#D92958|#A63268|#04BFAD|#D1270A|#FF9400|#299182|#63731A|#3D4DBE|#7382D9|#754FB9|#F2E205|#B1C502|#364245|#C05036|#8A342A|#E0DDA2|#B3D465|#EEEEEE|#FFD0E5|#D0FFFD|#FFFF84|#F4E6AE|#E5E5E5|#F1F1F1|#FFFFFF|transparent';

$lang->ui->theme->fontSizeList['inherit'] = '預設';
$lang->ui->theme->fontSizeList['12px']    = '12px';
$lang->ui->theme->fontSizeList['13px']    = '13px';
$lang->ui->theme->fontSizeList['14px']    = '14px';
$lang->ui->theme->fontSizeList['15px']    = '15px';
$lang->ui->theme->fontSizeList['16px']    = '16px';
$lang->ui->theme->fontSizeList['18px']    = '18px';
$lang->ui->theme->fontSizeList['20px']    = '20px';
$lang->ui->theme->fontSizeList['24px']    = '24px';

$lang->ui->theme->hover                                = '懸浮';
$lang->ui->theme->active                               = '激活';
$lang->ui->theme->normal                               = '正常';

$lang->ui->theme->linkStyle                            = '超連結';

$lang->ui->theme->navbarStyle                          = '導航';
$lang->ui->theme->navbar                               = '導航條';
$lang->ui->theme->navbarLayoutTip                      = '自適應寬度類型中導航項目將自動改變寬度填充整個導航';
$lang->ui->theme->navbarLayoutList['false']            = '普通';
$lang->ui->theme->navbarLayoutList['true']             = '自適應寬度';
$lang->ui->theme->navbarBackground                     = '導航條背景';
$lang->ui->theme->navbarBorder                         = '導航條邊框';
$lang->ui->theme->navbarText                           = '導航條文字';
$lang->ui->theme->navbarItem                           = '導航項目';
$lang->ui->theme->navbarItemText                       = '項目文字';
$lang->ui->theme->navbarItemBackground                 = '項目背景';
$lang->ui->theme->navbarItemBorder                     = '項目邊框';

$lang->ui->theme->panelStyle                           = '區塊';
$lang->ui->theme->panelBackground                      = '區塊背景';
$lang->ui->theme->panelHeadBackground                  = '頭部背景';
$lang->ui->theme->panelHeadText                        = '頭部文字';
$lang->ui->theme->panelHeadIcon                        = '頭部表徵圖';
$lang->ui->theme->panelLink                            = '連結';

$lang->ui->theme->buttonStyle                          = '按鈕';
$lang->ui->theme->buttonNormal                         = '普通';
$lang->ui->theme->buttonPrimary                        = '主要';
$lang->ui->theme->buttonInfo                           = '信息';
$lang->ui->theme->buttonDanger                         = '危險';
$lang->ui->theme->buttonWarning                        = '警告';
$lang->ui->theme->buttonSuccess                        = '積極';

$lang->ui->theme->columnStyle                          = '欄目';
$lang->ui->theme->sidebar                              = '側邊欄';
$lang->ui->theme->maincol                              = '主欄目';
$lang->ui->theme->sidebarPositionInverse               = '側邊欄位置';
$lang->ui->theme->sidebarPullLeftList['false']  = '靠右';
$lang->ui->theme->sidebarPullLeftList['true']   = '靠左';
$lang->ui->theme->sidebarWidth                         = '側邊欄寬度';
$lang->ui->theme->sidebarWidthList["16.666666666667%"] = "1/6";
$lang->ui->theme->sidebarWidthList["25%"]              = "1/4";
$lang->ui->theme->sidebarWidthList["33.333333333333%"] = "1/3";
$lang->ui->theme->sidebarWidthList["50%"]              = "1/2";
$lang->ui->theme->sidebarPosition                      = '側邊欄位置';
$lang->ui->theme->maincolText                          = '主欄目文字';
$lang->ui->theme->maincolBorder                        = '主欄目邊框';
$lang->ui->theme->maincolHeadBackground                = '主欄目頭部背景';
$lang->ui->theme->maincolHeadText                      = '主欄目頭部文字';
$lang->ui->theme->maincolBackground                    = '主欄目背景';
$lang->ui->theme->maincolHeadIcon                      = '主欄目頭部表徵圖';
$lang->ui->theme->sidebarText                          = '側邊欄文字';
$lang->ui->theme->sidebarBorder                        = '側邊欄邊框';
$lang->ui->theme->sidebarHeadBackground                = '側邊欄頭部背景';
$lang->ui->theme->sidebarHeadText                      = '側邊欄頭部文字';
$lang->ui->theme->sidebarBackground                    = '側邊欄背景';
$lang->ui->theme->sidebarHeadIcon                      = '側邊欄頭部表徵圖';

$lang->ui->theme->formStyle                            = '表單控件';

$lang->ui->theme->customStyle                          = '附加樣式';
$lang->ui->theme->customStylesheet                     = '附加樣式表';
$lang->ui->theme->customStylesheetTip                  = '支持Less和CSS語法';
$lang->ui->theme->lessVariables                        = 'Less變數';
$lang->ui->theme->lessVariablesUnuseable               = 'Less變數不可用。';
$lang->ui->theme->lessVariablesName                    = '名稱';
$lang->ui->theme->lessVariablesValue                   = '值';
$lang->ui->theme->lessVariablesDesc                    = '說明';

$lang->ui->theme->tableStyle                           = '表格';
$lang->ui->theme->statusColor                          = '狀態顏色';
$lang->ui->theme->tableHoverColor                      = '滑鼠懸停背景';
$lang->ui->theme->tableStripedColor                    = '隔行背景色';

$lang->ui->theme->components                           = '特殊組件';
$lang->ui->theme->breadcrumb                           = '麵包屑導航';
$lang->ui->theme->footer                               = '頁腳';

$lang->ui->theme->underlineList['none']                = '無';
$lang->ui->theme->underlineList['underline']           = '帶下劃線';

$lang->ui->groups = new stdclass();
$lang->ui->groups->basic  = '基本樣式';
$lang->ui->groups->navbar = '導航條';
$lang->ui->groups->block  = '區塊';
$lang->ui->groups->button = '按鈕';
$lang->ui->groups->footer = '頁腳';

$lang->ui->color          = '顏色';
$lang->ui->colorset       = '配色';
$lang->ui->pageBackground = '頁面背景';
$lang->ui->pageText       = '頁面文字';
$lang->ui->aLink          = '普通連結';
$lang->ui->aVisited       = '已訪問連結';
$lang->ui->aHover         = '高亮連結';
$lang->ui->underline      = '下劃線';

$lang->ui->layout        = '佈局';
$lang->ui->navbar        = '導航條';
$lang->ui->panel         = '子面板';
$lang->ui->menuBorder    = '菜單邊框';
$lang->ui->submenuBorder = '子菜單邊框';
$lang->ui->menuNormal    = '菜單普通';
$lang->ui->menuHover     = '菜單高亮';
$lang->ui->menuActive    = '菜單選中';
$lang->ui->submenuNormal = '子菜單普通';
$lang->ui->submenuHover  = '子菜單高亮';
$lang->ui->submenuActive = '子菜單選中';
$lang->ui->heading       = '標題';
$lang->ui->body          = '主體';
$lang->ui->background    = '背景';
$lang->ui->button        = '按鈕';
$lang->ui->text          = '文字';
$lang->ui->column        = '分欄';
$lang->ui->sidebarLayout = '側邊欄佈局';
$lang->ui->sidebarWidth  = '側邊欄寬度';

$lang->ui->primaryColor    = '基色';
$lang->ui->backcolor       = '背景色';
$lang->ui->forecolor       = '前景色';
$lang->ui->backgroundImage = '背景圖片';
$lang->ui->repeat          = '重複方式';
$lang->ui->position        = '位置';
$lang->ui->style           = '樣式';
$lang->ui->fontSize        = '字型大小';
$lang->ui->fontFamily      = '字型';
$lang->ui->fontWeight      = '加粗';
$lang->ui->layout          = '佈局';
$lang->ui->border          = '邊框';
$lang->ui->borderColor     = '邊框顏色';
$lang->ui->borderWidth     = '邊框寬度';
$lang->ui->width           = '寬度';
$lang->ui->radius          = '圓角';
$lang->ui->linkColor       = '連結顏色';
$lang->ui->default         = '普通';
$lang->ui->primary         = '主要';
$lang->ui->info            = '信息';
$lang->ui->danger          = '危險';
$lang->ui->warning         = '警告';
$lang->ui->success         = '積極';
