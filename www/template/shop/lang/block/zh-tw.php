<?php
/**
 * The block module zh-tw file of chanzhiEPS.
 *
 * @copyright   Copyright 2013-2013 青島息壤網絡信息有限公司 (QingDao XiRang Network Infomation Co,LTD www.xirangit.com)
 * @license     http://api.chanzhi.org/goto.php?item=license
 * @author      Xiying Guan <guanxiying@xirangit.com>
 * @package     block
 * @version     $Id$
 * @link        http://www.chanzhi.org
 */
$lang->block->shop = new stdclass();
$lang->block->shop->typeList['html']    = '自定義區塊';
$lang->block->shop->typeList['code']    = '原始碼';
$lang->block->shop->typeList['phpcode'] = 'php原始碼';

$lang->block->shop->typeList['latestArticle']   = '最新文章';
$lang->block->shop->typeList['hotArticle']      = '熱門文章';

$lang->block->shop->typeList['latestProduct']   = '最新產品';
$lang->block->shop->typeList['featuredProduct'] = '首頁推薦產品';
$lang->block->shop->typeList['hotProduct']      = '熱門產品';

$lang->block->shop->typeList['articleTree']     = '文章分類';
$lang->block->shop->typeList['productTree']     = '產品分類';
$lang->block->shop->typeList['blogTree']        = '博客分類';

$lang->block->shop->typeList['contact']         = '聯繫我們';
$lang->block->shop->typeList['about']           = '公司簡介';
$lang->block->shop->typeList['links']           = '友情連結';
$lang->block->shop->typeList['slide']           = '幻燈片';
$lang->block->shop->typeList['header']          = '網站頭部';

$lang->block->shop->typeGroups = array();
$lang->block->shop->typeGroups['html']    = 'input';
$lang->block->shop->typeGroups['code']    = 'input';
$lang->block->shop->typeGroups['phpcode'] = 'input';

$lang->block->shop->typeGroups['latestArticle'] = 'article';
$lang->block->shop->typeGroups['hotArticle']    = 'article';

$lang->block->shop->typeGroups['latestProduct']   = 'product';
$lang->block->shop->typeGroups['featuredProduct'] = 'product';
$lang->block->shop->typeGroups['hotProduct']      = 'product';

$lang->block->shop->typeGroups['articleTree'] = 'category';
$lang->block->shop->typeGroups['productTree'] = 'category';
$lang->block->shop->typeGroups['blogTree']    = 'category';

$lang->block->shop->typeGroups['contact'] = 'system';
$lang->block->shop->typeGroups['about']   = 'system';
$lang->block->shop->typeGroups['links']   = 'system';
$lang->block->shop->typeGroups['slide']   = 'system';
$lang->block->shop->typeGroups['header']  = 'system';

$lang->block->shop->pages['all']            = '全部頁面';
$lang->block->shop->pages['index_index']    = '首頁';

$lang->block->shop->pages['article_browse'] = '文章列表頁面';
$lang->block->shop->pages['article_view']   = '文章詳情頁面';

$lang->block->shop->pages['product_browse'] = '產品列表頁面';
$lang->block->shop->pages['product_view']   = '產品詳情頁面';

$lang->block->shop->pages['blog_index']     = '博客列表頁面';
$lang->block->shop->pages['blog_view']      = '博客詳情頁面';

$lang->block->shop->pages['forum_index']    = '論壇首頁';
$lang->block->shop->pages['forum_board']    = '帖子列表頁面';
$lang->block->shop->pages['thread_view']    = '帖子查看頁面';
$lang->block->shop->pages['search_list']    = '搜索結果頁';

$lang->block->shop->pages['book_index']     = '手冊中心';
$lang->block->shop->pages['book_browse']    = '手冊首頁';
$lang->block->shop->pages['book_read']      = '手冊章節';

$lang->block->shop->pages['message_index']  = '留言';

$lang->block->shop->pages['page_view']      = '單頁';

/* page layou>shop-> list. */
$lang->block->shop->regions = new stdclass();
$lang->block->shop->regions->all['start']  = '開始部分';
$lang->block->shop->regions->all['header'] = '頭部';
$lang->block->shop->regions->all['footer'] = '底部';
$lang->block->shop->regions->all['end']    = '結束部分';

$lang->block->shop->regions->index_index['header']  = '上部';
$lang->block->shop->regions->index_index['middle']  = '中部';
$lang->block->shop->regions->index_index['footer']  = '底部';

$lang->block->shop->regions->article_browse['side'] = '側邊';
$lang->block->shop->regions->article_view['side']   = '側邊';

$lang->block->shop->regions->product_browse['side'] = '側邊';
$lang->block->shop->regions->product_view['side']   = '側邊';

$lang->block->shop->regions->blog_index['side']     = '側邊';
$lang->block->shop->regions->blog_view['side']      = '側邊';

$lang->block->shop->regions->forum_index['header']  = '上部';
$lang->block->shop->regions->forum_board['header']  = '上部';
$lang->block->shop->regions->thread_view['header']  = '上部';
$lang->block->shop->regions->forum_index['footer']  = '下部';
$lang->block->shop->regions->forum_board['footer']  = '下部';
$lang->block->shop->regions->thread_view['footer']  = '下部';

$lang->block->shop->regions->book_browse['side']    = '側邊';
$lang->block->shop->regions->book_read['header']    = '上部';
$lang->block->shop->regions->book_read['footer']    = '下部';

$lang->block->shop->regions->message_index['side']  = '側邊';

$lang->block->shop->regions->page_view['side']      = '側邊';
