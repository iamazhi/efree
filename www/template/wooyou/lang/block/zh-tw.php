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
$lang->block->wooyou = new stdclass();
$lang->block->wooyou->typeList['html']    = '自定義區塊';
$lang->block->wooyou->typeList['code']    = '原始碼';
$lang->block->wooyou->typeList['phpcode'] = 'php原始碼';

$lang->block->wooyou->typeList['latestArticle']   = '最新文章';
$lang->block->wooyou->typeList['hotArticle']      = '熱門文章';

$lang->block->wooyou->typeList['latestProduct']   = '最新產品';
$lang->block->wooyou->typeList['featuredProduct'] = '首頁推薦產品';
$lang->block->wooyou->typeList['hotProduct']      = '熱門產品';

$lang->block->wooyou->typeList['articleTree']     = '文章分類';
$lang->block->wooyou->typeList['productTree']     = '產品分類';
$lang->block->wooyou->typeList['blogTree']        = '博客分類';

$lang->block->wooyou->typeList['contact']         = '聯繫我們';
$lang->block->wooyou->typeList['about']           = '公司簡介';
$lang->block->wooyou->typeList['links']           = '友情連結';
$lang->block->wooyou->typeList['slide']           = '幻燈片';
$lang->block->wooyou->typeList['header']          = '網站頭部';

$lang->block->wooyou->typeGroups = array();
$lang->block->wooyou->typeGroups['html']    = 'input';
$lang->block->wooyou->typeGroups['code']    = 'input';
$lang->block->wooyou->typeGroups['phpcode'] = 'input';

$lang->block->wooyou->typeGroups['latestArticle'] = 'article';
$lang->block->wooyou->typeGroups['hotArticle']    = 'article';

$lang->block->wooyou->typeGroups['latestProduct']   = 'product';
$lang->block->wooyou->typeGroups['featuredProduct'] = 'product';
$lang->block->wooyou->typeGroups['hotProduct']      = 'product';

$lang->block->wooyou->typeGroups['articleTree'] = 'category';
$lang->block->wooyou->typeGroups['productTree'] = 'category';
$lang->block->wooyou->typeGroups['blogTree']    = 'category';

$lang->block->wooyou->typeGroups['contact'] = 'system';
$lang->block->wooyou->typeGroups['about']   = 'system';
$lang->block->wooyou->typeGroups['links']   = 'system';
$lang->block->wooyou->typeGroups['slide']   = 'system';
$lang->block->wooyou->typeGroups['header']  = 'system';

$lang->block->wooyou->pages['all']            = '全部頁面';
$lang->block->wooyou->pages['index_index']    = '首頁';

$lang->block->wooyou->pages['article_browse'] = '文章列表頁面';
$lang->block->wooyou->pages['article_view']   = '文章詳情頁面';

$lang->block->wooyou->pages['product_browse'] = '產品列表頁面';
$lang->block->wooyou->pages['product_view']   = '產品詳情頁面';

$lang->block->wooyou->pages['blog_index']     = '博客列表頁面';
$lang->block->wooyou->pages['blog_view']      = '博客詳情頁面';

$lang->block->wooyou->pages['forum_index']    = '論壇首頁';
$lang->block->wooyou->pages['forum_board']    = '帖子列表頁面';
$lang->block->wooyou->pages['thread_view']    = '帖子查看頁面';
$lang->block->wooyou->pages['search_list']    = '搜索結果頁';

$lang->block->wooyou->pages['book_index']     = '手冊中心';
$lang->block->wooyou->pages['book_browse']    = '手冊首頁';
$lang->block->wooyou->pages['book_read']      = '手冊章節';

$lang->block->wooyou->pages['message_index']  = '留言';

$lang->block->wooyou->pages['page_view']      = '單頁';

/* page layou>wooyou-> list. */
$lang->block->wooyou->regions = new stdclass();
$lang->block->wooyou->regions->all['start']  = '開始部分';
$lang->block->wooyou->regions->all['header'] = '頭部';
$lang->block->wooyou->regions->all['footer'] = '底部';
$lang->block->wooyou->regions->all['end']    = '結束部分';

$lang->block->wooyou->regions->index_index['header']  = '上部';
$lang->block->wooyou->regions->index_index['middle']  = '中部';
$lang->block->wooyou->regions->index_index['footer']  = '底部';

$lang->block->wooyou->regions->article_browse['side'] = '側邊';
$lang->block->wooyou->regions->article_view['side']   = '側邊';

$lang->block->wooyou->regions->product_browse['side'] = '側邊';
$lang->block->wooyou->regions->product_view['side']   = '側邊';

$lang->block->wooyou->regions->blog_index['side']     = '側邊';
$lang->block->wooyou->regions->blog_view['side']      = '側邊';

$lang->block->wooyou->regions->forum_index['header']  = '上部';
$lang->block->wooyou->regions->forum_board['header']  = '上部';
$lang->block->wooyou->regions->thread_view['header']  = '上部';
$lang->block->wooyou->regions->forum_index['footer']  = '下部';
$lang->block->wooyou->regions->forum_board['footer']  = '下部';
$lang->block->wooyou->regions->thread_view['footer']  = '下部';

$lang->block->wooyou->regions->book_browse['side']    = '側邊';
$lang->block->wooyou->regions->book_read['header']    = '上部';
$lang->block->wooyou->regions->book_read['footer']    = '下部';

$lang->block->wooyou->regions->message_index['side']  = '側邊';

$lang->block->wooyou->regions->page_view['side']      = '側邊';
