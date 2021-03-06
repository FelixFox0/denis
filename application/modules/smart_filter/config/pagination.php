<?php

$get = ShopCore::$_GET;
unset($get['per_page']);
$config['pagination']['base_url'] = '/admin/components/cp/smart_filter?' . http_build_query($get);
$config['pagination']['page_query_string'] = true;
$config['pagination']['use_page_numbers'] = TRUE;
$config['pagination']['container'] = 'page';
$config['pagination']['uri_segment'] = 4;
$config['pagination']['per_page'] = 50;
$config['pagination']['separate_controls'] = true;
$config['pagination']['full_tag_open'] = '<div class="pagination pull-left"><ul>';
$config['pagination']['full_tag_close'] = '</ul></div>';
$config['pagination']['controls_tag_open'] = '<div class="pagination pull-right"><ul>';
$config['pagination']['controls_tag_close'] = '</ul></div>';
$config['pagination']['next_link'] = lang('Next', 'admin') . '&nbsp;&gt;';
$config['pagination']['prev_link'] = '&lt;&nbsp;' . lang('Prev', 'admin');
$config['pagination']['cur_tag_open'] = '<li class="btn-primary active"><span>';
$config['pagination']['cur_tag_close'] = '</span></li>';
$config['pagination']['prev_tag_open'] = '<li>';
$config['pagination']['prev_tag_close'] = '</li>';
$config['pagination']['next_tag_open'] = '<li>';
$config['pagination']['next_tag_close'] = '</li>';
$config['pagination']['num_tag_close'] = '</li>';
$config['pagination']['num_tag_open'] = '<li>';
$config['pagination']['num_tag_close'] = '</li>';
$config['pagination']['num_links'] = 5;
$config['pagination']['last_tag_open'] = '<li>';
$config['pagination']['last_tag_close'] = '</li>';
$config['pagination']['first_tag_open'] = '<li>';
$config['pagination']['first_tag_close'] = '</li>';