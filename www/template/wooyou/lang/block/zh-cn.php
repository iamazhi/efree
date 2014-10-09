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
$lang->block->wooyou->typeList['html']     = '自定义区块';
$lang->block->wooyou->typeList['htmlcode'] = 'html源代码';
$lang->block->wooyou->typeList['phpcode']  = 'php源代码';

$lang->block->wooyou->typeList['latestArticle']   = '最新文章';
$lang->block->wooyou->typeList['hotArticle']      = '热门文章';

$lang->block->wooyou->typeList['latestProduct']   = '最新产品';
$lang->block->wooyou->typeList['featuredProduct'] = '首页推荐产品';
$lang->block->wooyou->typeList['hotProduct']      = '热门产品';

$lang->block->wooyou->typeList['articleTree']     = '文章分类';
$lang->block->wooyou->typeList['productTree']     = '产品分类';
$lang->block->wooyou->typeList['blogTree']        = '博客分类';

$lang->block->wooyou->typeList['contact']         = '联系我们';
$lang->block->wooyou->typeList['followUs']        = '关注我们';
$lang->block->wooyou->typeList['about']           = '公司简介';
$lang->block->wooyou->typeList['links']           = '友情链接';
$lang->block->wooyou->typeList['slide']           = '幻灯片';
$lang->block->wooyou->typeList['header']          = '网站头部';

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

$lang->block->wooyou->pages['all']            = '全部页面';
$lang->block->wooyou->pages['index_index']    = '首页';
$lang->block->wooyou->pages['company_index']  = '关于我们';

$lang->block->wooyou->pages['article_browse'] = '文章列表页面';
$lang->block->wooyou->pages['article_view']   = '文章详情页面';

$lang->block->wooyou->pages['product_browse'] = '产品列表页面';
$lang->block->wooyou->pages['product_view']   = '产品详情页面';

$lang->block->wooyou->pages['blog_index']     = '博客列表页面';
$lang->block->wooyou->pages['blog_view']      = '博客详情页面';

$lang->block->wooyou->pages['forum_index']    = '论坛首页';
$lang->block->wooyou->pages['forum_board']    = '帖子列表页面';
$lang->block->wooyou->pages['thread_view']    = '帖子查看页面';
$lang->block->wooyou->pages['search_list']    = '搜索结果页';

$lang->block->wooyou->pages['book_index']     = '手册中心';
$lang->block->wooyou->pages['book_browse']    = '手册首页';
$lang->block->wooyou->pages['book_read']      = '手册章节';

$lang->block->wooyou->pages['message_index']  = '留言';

$lang->block->wooyou->pages['page_view']      = '单页';

/* page layout list. */
$lang->block->wooyou->regions = new stdclass();
$lang->block->wooyou->regions->all['header'] = 'Header(不可见)';
$lang->block->wooyou->regions->all['top']    = '页头';
$lang->block->wooyou->regions->all['bottom'] = '页尾';
$lang->block->wooyou->regions->all['footer'] = 'Footer(不可见)';

$lang->block->wooyou->regions->index_index['top']     = '上部';
$lang->block->wooyou->regions->index_index['middle']  = '中部';
$lang->block->wooyou->regions->index_index['bottom']  = '底部';

$lang->block->wooyou->regions->company_index['side']  = '侧边';

$lang->block->wooyou->regions->article_browse['side'] = '侧边';
$lang->block->wooyou->regions->article_view['side']   = '侧边';

$lang->block->wooyou->regions->product_browse['side'] = '侧边';
$lang->block->wooyou->regions->product_view['side']   = '侧边';

$lang->block->wooyou->regions->blog_index['side']     = '侧边';
$lang->block->wooyou->regions->blog_view['side']      = '侧边';

$lang->block->wooyou->regions->forum_index['top']     = '上部';
$lang->block->wooyou->regions->forum_index['bottom']  = '底部';
$lang->block->wooyou->regions->forum_board['top']     = '上部';
$lang->block->wooyou->regions->forum_board['bottom']  = '底部';
$lang->block->wooyou->regions->thread_view['top']     = '上部';
$lang->block->wooyou->regions->thread_view['bottom']  = '底部';

$lang->block->wooyou->regions->book_browse['side']    = '侧边';
$lang->block->wooyou->regions->book_read['top']       = '上部';
$lang->block->wooyou->regions->book_read['bottom']    = '底部';

$lang->block->wooyou->regions->message_index['side']  = '侧边';

$lang->block->wooyou->regions->page_view['side']      = '侧边';
