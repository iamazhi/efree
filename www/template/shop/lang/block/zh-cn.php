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
$lang->block->shop->typeList['html']     = '自定义区块';
$lang->block->shop->typeList['htmlcode'] = 'html源代码';
$lang->block->shop->typeList['phpcode']  = 'php源代码';

$lang->block->shop->typeList['latestArticle']   = '最新文章';
$lang->block->shop->typeList['hotArticle']      = '热门文章';

$lang->block->shop->typeList['latestProduct']   = '最新产品';
$lang->block->shop->typeList['featuredProduct'] = '首页推荐产品';
$lang->block->shop->typeList['hotProduct']      = '热门产品';

$lang->block->shop->typeList['articleTree']     = '文章分类';
$lang->block->shop->typeList['productTree']     = '产品分类';
$lang->block->shop->typeList['blogTree']        = '博客分类';

$lang->block->shop->typeList['contact']         = '联系我们';
$lang->block->shop->typeList['followUs']        = '关注我们';
$lang->block->shop->typeList['about']           = '公司简介';
$lang->block->shop->typeList['links']           = '友情链接';
$lang->block->shop->typeList['slide']           = '幻灯片';
$lang->block->shop->typeList['header']          = '网站头部';

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

$lang->block->shop->pages['all']            = '全部页面';
$lang->block->shop->pages['index_index']    = '首页';
$lang->block->shop->pages['company_index']  = '关于我们';

$lang->block->shop->pages['article_browse'] = '文章列表页面';
$lang->block->shop->pages['article_view']   = '文章详情页面';

$lang->block->shop->pages['product_browse'] = '产品列表页面';
$lang->block->shop->pages['product_view']   = '产品详情页面';

$lang->block->shop->pages['blog_index']     = '博客列表页面';
$lang->block->shop->pages['blog_view']      = '博客详情页面';

$lang->block->shop->pages['forum_index']    = '论坛首页';
$lang->block->shop->pages['forum_board']    = '帖子列表页面';
$lang->block->shop->pages['thread_view']    = '帖子查看页面';
$lang->block->shop->pages['search_list']    = '搜索结果页';

$lang->block->shop->pages['book_index']     = '手册中心';
$lang->block->shop->pages['book_browse']    = '手册首页';
$lang->block->shop->pages['book_read']      = '手册章节';

$lang->block->shop->pages['message_index']  = '留言';

$lang->block->shop->pages['page_view']      = '单页';

/* page layout list. */
$lang->block->shop->regions = new stdclass();
$lang->block->shop->regions->all['header'] = 'Header(不可见)';
$lang->block->shop->regions->all['top']    = '页头';
$lang->block->shop->regions->all['bottom'] = '页尾';
$lang->block->shop->regions->all['footer'] = 'Footer(不可见)';

$lang->block->shop->regions->index_index['top']     = '上部';
$lang->block->shop->regions->index_index['middle']  = '中部';
$lang->block->shop->regions->index_index['bottom']  = '底部';

$lang->block->shop->regions->company_index['side']  = '侧边';

$lang->block->shop->regions->article_browse['side'] = '侧边';
$lang->block->shop->regions->article_view['side']   = '侧边';

$lang->block->shop->regions->product_browse['side'] = '侧边';
$lang->block->shop->regions->product_view['side']   = '侧边';

$lang->block->shop->regions->blog_index['side']     = '侧边';
$lang->block->shop->regions->blog_view['side']      = '侧边';

$lang->block->shop->regions->forum_index['top']     = '上部';
$lang->block->shop->regions->forum_index['bottom']  = '底部';
$lang->block->shop->regions->forum_board['top']     = '上部';
$lang->block->shop->regions->forum_board['bottom']  = '底部';
$lang->block->shop->regions->thread_view['top']     = '上部';
$lang->block->shop->regions->thread_view['bottom']  = '底部';

$lang->block->shop->regions->book_browse['side']    = '侧边';
$lang->block->shop->regions->book_read['top']       = '上部';
$lang->block->shop->regions->book_read['bottom']    = '底部';

$lang->block->shop->regions->message_index['side']  = '侧边';

$lang->block->shop->regions->page_view['side']      = '侧边';
