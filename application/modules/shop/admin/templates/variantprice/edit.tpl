<div class="container">
    <section class="mini-layout">
        <div class="frame_title clearfix">
            <div class="pull-left">
                <span class="help-inline"></span>
                <span class="title">{lang('Editing price type','admin')}</span>

            </div>
            <div class="pull-right">
                <div class="d-i_b">
                    <a href="{site_url('/admin/components/run/shop/variantprice')}" class="t-d_n m-r_15"><span class="f-s_14">←</span> <span class="t-d_u">{lang('Go back','admin')}</span></a>
                    <button type="button" class="btn btn-small btn-primary action_on formSubmit" data-action="edit" data-form="#editNot" data-submit><i class="icon-ok icon-white"></i>{lang('Save','admin')}</button>
                    <button type="button" class="btn btn-small action_on formSubmit" data-action="close" data-form="#editNot"><i class="icon-share"></i>{lang('Save and exit','admin')}</button>
                </div>
            </div>
        </div>
        <table class="table  table-bordered table-condensed table-hover content_big_td m-t_10">
            <thead>
            <tr>
                <th colspan="6">
                    {lang('Information','admin')}
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td colspan="12">
                    <form action="{site_url('/admin/components/run/shop/variantprice/edit/' . $model->getId())}" id="editNot" class="span9 form-horizontal" method="post">

                        <div class="control-group">

                            <label class="control-label" for="Name">{lang('Title','admin')}:<span class="must">*</span></label>

                            <div class="controls">
                                <input type="text" name="name" id="Name" value="{echo htmlspecialchars($model->getNameType())}" required="required"/>
                            </div>
                        </div>

                        <div class="control-group">

                            <label class="control-label" for="price_types">{lang('Type','admin')}:</label>
                            <div class="controls">
                                <select disabled name="price_type" id="price_type">
                                    <option value="1">{lang('Price', 'admin')}</option>
                                    <option value="2" {if $model->getPriceType() == 2} selected {/if}>{lang('Procent', 'admin')}</option>
                                </select>
                                <input type="hidden" name="price_type" value="{echo $model->getPriceType()}">
                            </div>

                        </div>


                        <div class="control-group" id="currency" {if $model->getPriceType() == 2} style="display: none;" {/if}>
                            <label class="control-label" for="Name">{lang('Currency','admin')}:</label>
                            <div class="controls">
                                <select name="currency">
                                    {foreach $currencies as $currency}
                                        <option value="{echo $currency->getId()}" {if $model->getCurrencyId() == $currency->getId()} selected="selected"{/if}>{echo $currency->getCode()}</option>
                                    {/foreach}
                                </select>
                            </div>

                        </div>

                        <div class="control-group">

                            <label class="control-label" for="role_id">{lang('User role', 'admin')}:</label>
                            <div class="controls">
                                <select id="inputMainC" name="role_id[]" multiple>
                                    {foreach $rbac_roles as $rbac_role}
                                        <option value="{echo $rbac_role['id']}" {if $rbac_role['selected']} selected {/if}>{echo $rbac_role['name']}</option>
                                    {/foreach}
                                </select>
                            </div>

                        </div>

                        <div class="control-group">
                            <label class="control-label" for="Status">{lang('Show on Site','admin')}:</label>
                            <div class="controls">
                                <span class="frame_label no_connection">
                                   <span class="niceCheck b_n">
                                        <input name="status" class="span2" id="Status" type="checkbox" {if $model->getStatus() == 1} checked{/if} >
                                   </span>
                                </span>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">
                                            <span class="span4">
                                                <span data-title="{lang('Information', 'admin')}:"
                                                      class="popover_ref" data-original-title="">
                                                    <i class="icon-info-sign"></i>
                                                </span>
                                                <div class="d_n">

                                                    {lang('Discount not consider for product, brand and category.', 'admin')}

                                                </div>
                                                {lang('Consider discount','system_bonus')}:
                                            </span>
                            </label>
                            <div class="controls">
                                               <span class="frame_label no_connection">
                                                       <span class="niceCheck b_n">
                                                        <input name="consider_discount" {if $model->getConsiderDiscount() == true} checked {/if} type="checkbox">
                                                       </span>
                                               </span>
                            </div>
                        </div>

                    </form>
                </td>
            </tr>
            </tbody>
        </table>
    </section>
</div>