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
$lang->block->wooyou = new stdclass();
$lang->block->wooyou->typeList['html']     = 'Html block';
$lang->block->wooyou->typeList['htmlcode'] = 'Html codes';
$lang->block->wooyou->typeList['phpcode']  = 'php codes';

$lang->block->wooyou->typeList['latestArticle'] = 'Latest Articles';
$lang->block->wooyou->typeList['hotArticle']    = 'Hot Articles';

$lang->block->wooyou->typeList['latestProduct']   = 'Latest Products';
$lang->block->wooyou->typeList['featuredProduct'] = 'Featured Products';
$lang->block->wooyou->typeList['hotProduct']      = 'Hot Products';

$lang->block->wooyou->typeList['articleTree'] = 'Article Categories';
$lang->block->wooyou->typeList['productTree'] = 'Product Categories';
$lang->block->wooyou->typeList['blogTree']    = 'Blog Categories';

$lang->block->wooyou->typeList['contact']  = 'Contact Us';
$lang->block->wooyou->typeList['followUs'] = 'Follow Us';
$lang->block->wooyou->typeList['about']    = 'About Us';
$lang->block->wooyou->typeList['links']    = 'Links';
$lang->block->wooyou->typeList['slide']    = 'Slide';
$lang->block->wooyou->typeList['header']   = 'Header';

$lang->block->wooyou->typeGroups = array();
$lang->block->wooyou->typeGroups['html']     = 'input';
$lang->block->wooyou->typeGroups['htmlcode'] = 'input';
$lang->block->wooyou->typeGroups['phpcode']  = 'input';

$lang->block->wooyou->typeGroups['latestArticle'] = 'article';
$lang->block->wooyou->typeGroups['hotArticle']    = 'article';

$lang->block->wooyou->typeGroups['latestProduct']   = 'product';
$lang->block->wooyou->typeGroups['featuredProduct'] = 'product';
$lang->block->wooyou->typeGroups['hotProduct']      = 'product';

$lang->block->wooyou->typeGroups['articleTree'] = 'category';
$lang->block->wooyou->typeGroups['productTree'] = 'category';
$lang->block->wooyou->typeGroups['blogTree']    = 'category';

$lang->block->wooyou->typeGroups['contact']  = 'system';
$lang->block->wooyou->typeGroups['followUs'] = 'system';
$lang->block->wooyou->typeGroups['about']    = 'system';
$lang->block->wooyou->typeGroups['links']    = 'system';
$lang->block->wooyou->typeGroups['slide']    = 'system';
$lang->block->wooyou->typeGroups['header']   = 'system';

$lang->block->wooyou->pages['all']            = 'All';
$lang->block->wooyou->pages['index_index']    = 'Home';
$lang->block->wooyou->pages['company_index']  = 'About Us';

$lang->block->wooyou->pages['article_browse'] = 'Browse article page';
$lang->block->wooyou->pages['article_view']   = 'View article page';

$lang->block->wooyou->pages['product_browse'] = 'Browse product page';
$lang->block->wooyou->pages['product_view']   = 'View product page';

$lang->block->wooyou->pages['blog_index']     = 'Browse blog page';
$lang->block->wooyou->pages['blog_view']      = 'View blog page';

$lang->block->wooyou->pages['forum_index']    = 'Forum home';
$lang->block->wooyou->pages['forum_board']    = 'Forum board';
$lang->block->wooyou->pages['thread_view']    = 'View thread';
$lang->block->wooyou->pages['search_list']    = 'Search';

$lang->block->wooyou->pages['book_index']     = 'Book';
$lang->block->wooyou->pages['book_browse']    = 'Book catalogue';
$lang->block->wooyou->pages['book_read']      = 'Book content';

$lang->block->wooyou->pages['message_index']  = 'Inquire';

$lang->block->wooyou->pages['page_view']      = 'Page';

/* page layou>wooyou-> list. */
$lang->block->wooyou->regions = new stdclass();
$lang->block->wooyou->regions->all['header'] = 'Header(invisible)';
$lang->block->wooyou->regions->all['top']    = 'Top';
$lang->block->wooyou->regions->all['bottom'] = 'Bottom';
$lang->block->wooyou->regions->all['footer'] = 'Footer(invisible)';

$lang->block->wooyou->regions->index_index['top']     = 'Top';
$lang->block->wooyou->regions->index_index['middle']  = 'Middle';
$lang->block->wooyou->regions->index_index['bottom']  = 'Bottom';

$lang->block->wooyou->regions->company_index['side']  = 'Side';

$lang->block->wooyou->regions->article_browse['side'] = 'Side';
$lang->block->wooyou->regions->article_view['side']   = 'Side';

$lang->block->wooyou->regions->product_browse['side'] = 'Side';
$lang->block->wooyou->regions->product_view['side']   = 'Side';

$lang->block->wooyou->regions->blog_index['side']     = 'Side';
$lang->block->wooyou->regions->blog_view['side']      = 'Side';

$lang->block->wooyou->regions->forum_index['top']     = 'Top';
$lang->block->wooyou->regions->forum_index['bottom']  = 'Bottom';
$lang->block->wooyou->regions->forum_board['top']     = 'Top';
$lang->block->wooyou->regions->forum_board['bottom']  = 'Bottom';
$lang->block->wooyou->regions->thread_view['top']     = 'Top';
$lang->block->wooyou->regions->thread_view['bottom']  = 'Bottom';

$lang->block->wooyou->regions->book_browse['side']    = 'Side';
$lang->block->wooyou->regions->book_read['top']       = 'Top';
$lang->block->wooyou->regions->book_read['bottom']    = 'Bottom';

$lang->block->wooyou->regions->message_index['side']  = 'Side';

$lang->block->wooyou->regions->page_view['side']      = 'Side';
