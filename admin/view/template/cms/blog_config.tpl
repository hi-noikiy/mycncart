<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-information" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-information" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
            <li><a href="#tab-category" data-toggle="tab"><?php echo $tab_category; ?></a></li>
            <li><a href="#tab-blog" data-toggle="tab"><?php echo $tab_blog; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
              <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
              <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                  <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="cms_blog_description[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($cms_blog_description[$language['language_id']]) ? $cms_blog_description[$language['language_id']]['title'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" id="input-title<?php echo $language['language_id']; ?>" class="form-control" />
                      <?php if (isset($error_title[$language['language_id']])) { ?>
                      <div class="text-danger"><?php echo $error_title[$language['language_id']]; ?></div>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="cms_blog_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($cms_blog_description[$language['language_id']]) ? $cms_blog_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
                      <?php if (isset($error_meta_title[$language['language_id']])) { ?>
                      <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
                    <div class="col-sm-10">
                      <textarea name="cms_blog_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($cms_blog_description[$language['language_id']]) ? $cms_blog_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
                    <div class="col-sm-10">
                      <textarea name="cms_blog_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($cms_blog_description[$language['language_id']]) ? $cms_blog_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                    </div>
                  </div>
                </div>
                <?php } ?>
              </div>
            </div>
            
            <div class="tab-pane" id="tab-data">
            
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-seo-keyword"><span data-toggle="tooltip" title="<?php echo $help_cms_blog_seo_keyword; ?>"><?php echo $entry_cms_blog_seo_keyword; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="cms_blog_seo_keyword" value="<?php echo $cms_blog_seo_keyword; ?>" placeholder="<?php echo $entry_cms_blog_seo_keyword; ?>" id="input-cms-blog-seo-keyword" class="form-control" />
                  <?php if ($error_cms_blog_seo_keyword) { ?>
                  <div class="text-danger"><?php echo $error_cms_blog_seo_keyword; ?></div>
                  <?php } ?>
                </div>
              </div>
              
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-cms-blog-large-image-height"><?php echo $entry_cms_blog_large_image; ?></label>
                <div class="col-sm-10">
                  <div class="row">
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_large_image_width" value="<?php echo $cms_blog_large_image_width; ?>" placeholder="<?php echo $entry_cms_blog_large_image_width; ?>" id="input-cms-blog-large-image-width" class="form-control" />
                    </div>
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_large_image_height" value="<?php echo $cms_blog_large_image_height; ?>" placeholder="<?php echo $entry_cms_blog_large_image_height; ?>" class="form-control" />
                    </div>
                  </div>
                  <?php if ($error_cms_blog_large_image) { ?>
                  <div class="text-danger"><?php echo $error_cms_blog_large_image; ?></div>
                  <?php } ?>
                </div>
              </div>
              
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-cms-blog-middle-image-height"><?php echo $entry_cms_blog_middle_image; ?></label>
                <div class="col-sm-10">
                  <div class="row">
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_middle_image_width" value="<?php echo $cms_blog_middle_image_width; ?>" placeholder="<?php echo $entry_cms_blog_middle_image_width; ?>" id="input-cms-blog-middle-image-width" class="form-control" />
                    </div>
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_middle_image_height" value="<?php echo $cms_blog_middle_image_height; ?>" placeholder="<?php echo $entry_cms_blog_middle_image_height; ?>" class="form-control" />
                    </div>
                  </div>
                  <?php if ($error_cms_blog_middle_image) { ?>
                  <div class="text-danger"><?php echo $error_cms_blog_middle_image; ?></div>
                  <?php } ?>
                </div>
              </div>
              
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-cms-blog-small-image-height"><?php echo $entry_cms_blog_small_image; ?></label>
                <div class="col-sm-10">
                  <div class="row">
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_small_image_width" value="<?php echo $cms_blog_small_image_width; ?>" placeholder="<?php echo $entry_cms_blog_small_image_width; ?>" id="input-cms-blog-small-image-width" class="form-control" />
                    </div>
                    <div class="col-sm-6">
                      <input type="text" name="cms_blog_small_image_height" value="<?php echo $cms_blog_small_image_height; ?>" placeholder="<?php echo $entry_cms_blog_small_image_height; ?>" class="form-control" />
                    </div>
                  </div>
                  <?php if ($error_cms_blog_small_image) { ?>
                  <div class="text-danger"><?php echo $error_cms_blog_small_image; ?></div>
                  <?php } ?>
                </div>
              </div>
              
            </div>
            
            <div class="tab-pane" id="tab-category">
            
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-title"><?php echo $entry_cms_blog_category_page_show_title; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_title" id="input-cms-blog-category-page-show-title" class="form-control">
                    <?php if ($cms_blog_category_page_show_title) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-description"><?php echo $entry_cms_blog_category_page_show_brief; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_brief" id="input-cms-blog-category-page-show-description" class="form-control">
                    <?php if ($cms_blog_category_page_show_brief) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-readmore"><?php echo $entry_cms_blog_category_page_show_readmore; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_readmore" id="input-cms-blog-category-page-show-readmore" class="form-control">
                    <?php if ($cms_blog_category_page_show_readmore) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-image"><?php echo $entry_cms_blog_category_page_show_image; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_image" id="input-cms-blog-category-page-show-image" class="form-control">
                    <?php if ($cms_blog_category_page_show_image) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-author"><?php echo $entry_cms_blog_category_page_show_author; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_author" id="input-cms-blog-category-page-show-author" class="form-control">
                    <?php if ($cms_blog_category_page_show_author) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-category"><?php echo $entry_cms_blog_category_page_show_category; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_category" id="input-cms-blog-category-page-show-category" class="form-control">
                    <?php if ($cms_blog_category_page_show_category) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-created-date"><?php echo $entry_cms_blog_category_page_show_created_date; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_created_date" id="input-cms-blog-category-page-show-created-date" class="form-control">
                    <?php if ($cms_blog_category_page_show_created_date) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-hits"><?php echo $entry_cms_blog_category_page_show_hits; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_hits" id="input-cms-blog-category-page-show-hits" class="form-control">
                    <?php if ($cms_blog_category_page_show_hits) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-category-page-show-comment-counter"><?php echo $entry_cms_blog_category_page_show_comment_counter; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_category_page_show_comment_counter" id="input-cms-blog-category-page-show-comment-counter" class="form-control">
                    <?php if ($cms_blog_category_page_show_comment_counter) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>

            </div>
            
            <div class="tab-pane" id="tab-blog">
            
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-image-type"><?php echo $entry_cms_blog_image_type; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_image_type" id="input-cms-blog-image-type" class="form-control">
                    <?php if ($cms_blog_image_type == 'l') { ?>
                    <option value="l" selected="selected"><?php echo $text_large; ?></option>
                    <?php }else{ ?>
                    <option value="l"><?php echo $text_large; ?></option>
                    <?php } ?>
                    <?php if ($cms_blog_image_type == 'm') { ?>
                    <option value="m" selected="selected"><?php echo $text_middle; ?></option>
                    <?php }else{ ?>
                    <option value="m"><?php echo $text_middle; ?></option>
                    <?php } ?>
                    <?php if ($cms_blog_image_type == 's') { ?>
                    <option value="s" selected="selected"><?php echo $text_small; ?></option>
                    <?php }else{ ?>
                    <option value="s"><?php echo $text_small; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-title"><?php echo $entry_cms_blog_show_title; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_title" id="input-cms-blog-show-title" class="form-control">
                    <?php if ($cms_blog_show_title) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-image"><?php echo $entry_cms_blog_show_image; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_image" id="input-cms-blog-show-image" class="form-control">
                    <?php if ($cms_blog_show_image) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-author"><?php echo $entry_cms_blog_show_author; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_author" id="input-cms-blog-show-author" class="form-control">
                    <?php if ($cms_blog_show_author) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-category"><?php echo $entry_cms_blog_show_category; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_category" id="input-cms-blog-show-category" class="form-control">
                    <?php if ($cms_blog_show_category) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-created-date"><?php echo $entry_cms_blog_show_created_date; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_created_date" id="input-cms-blog-show-created-date" class="form-control">
                    <?php if ($cms_blog_show_created_date) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-hits"><?php echo $entry_cms_blog_show_hits; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_hits" id="input-cms-blog-show-hits" class="form-control">
                    <?php if ($cms_blog_show_hits) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-comment-counter"><?php echo $entry_cms_blog_show_comment_counter; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_comment_counter" id="input-cms-blog-show-comment-counter" class="form-control">
                    <?php if ($cms_blog_show_comment_counter) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-comment-form"><?php echo $entry_cms_blog_show_comment_form; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_comment_form" id="input-cms-blog-show-comment-form" class="form-control">
                    <?php if ($cms_blog_show_comment_form) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-auto-publish-comment"><?php echo $entry_cms_blog_show_auto_publish_comment; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_auto_publish_comment" id="input-cms-blog-show-auto-publish-comment" class="form-control">
                    <?php if ($cms_blog_show_auto_publish_comment) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-recaptcha"><?php echo $entry_cms_blog_show_recaptcha; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_recaptcha" id="input-cms-blog-show-recaptcha" class="form-control">
                    <?php if ($cms_blog_show_recaptcha) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-cms-blog-show-need-login-to-comment"><?php echo $entry_cms_blog_show_need_login_to_comment; ?></label>
                <div class="col-sm-10">
                  <select name="cms_blog_show_need_login_to_comment" id="input-cms-blog-show-need-login-to-comment" class="form-control">
                    <?php if ($cms_blog_show_need_login_to_comment) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>

            </div>
            
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-description<?php echo $language['language_id']; ?>').summernote({
	height: 300
});
<?php } ?>
//--></script> 
  <script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script></div>
<?php echo $footer; ?>