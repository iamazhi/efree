<?php
/**
 * The block module zh-cn file of chanzhiEPS.
 *
 * @copyright   Copyright 2013-2013 青岛息壤网络信息有限公司 (QingDao XiRang Network Infomation Co,LTD www.xirangit.com)
 * @license     http://api.chanzhi.org/goto.php?item=license
 * @author      Xiying Guan <guanxiying@xirangit.com>
 * @package     block
 * @version     $Id$
 * @link        http://www.chanzhi.org
 */
$lang->block->shop = new stdclass();
$lang->block->shop->typeList['html']     = 'Html block';
$lang->block->shop->typeList['htmlcode'] = 'Html codes';
$lang->block->shop->typeList['phpcode']  = 'php codes';

$lang->block->shop->typeList['latestArticle'] = 'Latest Articles';
$lang->block->shop->typeList['hotArticle']    = 'Hot Articles';

$lang->block->shop->typeList['latestProduct']   = 'Latest Products';
$lang->block->shop->typeList['featuredProduct'] = 'Featured Products';
$lang->block->shop->typeList['hotProduct']      = 'Hot Products';

$lang->block->shop->typeList['articleTree'] = 'Article Categories';
$lang->block->shop->typeList['productTree'] = 'Product Categories';
$lang->block->shop->typeList['blogTree']    = 'Blog Categories';

$lang->block->shop->typeList['contact']  = 'Contact Us';
$lang->block->shop->typeList['followUs'] = 'Follow Us';
$lang->block->shop->typeList['about']    = 'About Us';
$lang->block->shop->typeList['links']    = 'Links';
$lang->block->shop->typeList['slide']    = 'Slide';
$lang->block->shop->typeList['header']   = 'Header';

$lang->block->shop->typeGroups = array();
$lang->block->shop->typeGroups['html']     = 'input';
$lang->block->shop->typeGroups['htmlcode'] = 'input';
$lang->block->shop->typeGroups['phpcode']  = 'input';

$lang->block->shop->typeGroups['latestArticle'] = 'article';
$lang->block->shop->typeGroups['hotArticle']    = 'article';

$lang->block->shop->typeGroups['latestProduct']   = 'product';
$lang->block->shop->typeGroups['featuredProduct'] = 'product';
$lang->block->shop->typeGroups['hotProduct']      = 'product';

$lang->block->shop->typeGroups['articleTree'] = 'category';
$lang->block->shop->typeGroups['productTree'] = 'category';
$lang->block->shop->typeGroups['blogTree']    = 'category';

$lang->block->shop->typeGroups['contact']  = 'system';
$lang->block->shop->typeGroups['followUs'] = 'system';
$lang->block->shop->typeGroups['about']    = 'system';
$lang->block->shop->typeGroups['links']    = 'system';
$lang->block->shop->typeGroups['slide']    = 'system';
$lang->block->shop->typeGroups['header']   = 'system';

$lang->block->shop->pages['all']            = 'All';
$lang->block->shop->pages['index_index']    = 'Home';
$lang->block->shop->pages['company_index']  = 'About Us';

$lang->block->shop->pages['article_browse'] = 'Browse article page';
$lang->block->shop->pages['article_view']   = 'View article page';

$lang->block->shop->pages['product_browse'] = 'Browse product page';
$lang->block->shop->pages['product_view']   = 'View product page';

$lang->block->shop->pages['blog_index']     = 'Browse blog page';
$lang->block->shop->pages['blog_view']      = 'View blog page';

$lang->block->shop->pages['forum_index']    = 'Forum home';
$lang->block->shop->pages['forum_board']    = 'Forum board';
$lang->block->shop->pages['thread_view']    = 'View thread';
$lang->block->shop->pages['search_list']    = 'Search';

$lang->block->shop->pages['book_index']     = 'Book';
$lang->block->shop->pages['book_browse']    = 'Book catalogue';
$lang->block->shop->pages['book_read']      = 'Book content';

$lang->block->shop->pages['message_index']  = 'Inquire';

$lang->block->shop->pages['page_view']      = 'Page';

/* page layou>shop-> list. */
$lang->block->shop->regions = new stdclass();
$lang->block->shop->regions->all['header'] = 'Header(invisible)';
$lang->block->shop->regions->all['top']    = 'Top';
$lang->block->shop->regions->all['bottom'] = 'Bottom';
$lang->block->shop->regions->all['footer'] = 'Footer(invisible)';

$lang->block->shop->regions->index_index['top']     = 'Top';
$lang->block->shop->regions->index_index['middle']  = 'Middle';
$lang->block->shop->regions->index_index['bottom']  = 'Bottom';

$lang->block->shop->regions->company_index['side']  = 'Side';

$lang->block->shop->regions->article_browse['side'] = 'Side';
$lang->block->shop->regions->article_view['side']   = 'Side';

$lang->block->shop->regions->product_browse['side'] = 'Side';
$lang->block->shop->regions->product_view['side']   = 'Side';

$lang->block->shop->regions->blog_index['side']     = 'Side';
$lang->block->shop->regions->blog_view['side']      = 'Side';

$lang->block->shop->regions->forum_index['top']     = 'Top';
$lang->block->shop->regions->forum_index['bottom']  = 'Bottom';
$lang->block->shop->regions->forum_board['top']     = 'Top';
$lang->block->shop->regions->forum_board['bottom']  = 'Bottom';
$lang->block->shop->regions->thread_view['top']     = 'Top';
$lang->block->shop->regions->thread_view['bottom']  = 'Bottom';

$lang->block->shop->regions->book_browse['side']    = 'Side';
$lang->block->shop->regions->book_read['top']       = 'Top';
$lang->block->shop->regions->book_read['bottom']    = 'Bottom';

$lang->block->shop->regions->message_index['side']  = 'Side';

$lang->block->shop->regions->page_view['side']      = 'Side';
