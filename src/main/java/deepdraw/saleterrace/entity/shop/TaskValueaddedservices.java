package deepdraw.saleterrace.entity.shop;

public class TaskValueaddedservices {
    /**
     * 试客标签 需要？【5金币一单】 数据库字段是：try_the_gurst_tag  <br>
     */
    private Integer tryTheGurstTag;

    /**
     * 地域限制 （以下所选地区 可接该活动  +0.5每单） 数据库字段是：regional_restrictions  <br>
     */
    private String regionalRestrictions;

    /**
     * 年龄限制 （仅仅选择年龄段用户  1：18-25 2：26-35 3：35及以上 数据库字段是：age_limit  <br>
     */
    private Integer ageLimit;

    /**
     * 性别限制（仅限选择性别用户，可接该活动 0.5一单  1：男  2：女） 数据库字段是：gender_restrictions  <br>
     */
    private Integer genderRestrictions;

    /**
     * 类别限制 仅限常购该类目的用户 （1服装鞋包 2手机数码 3家用电器 4美妆饰品 5母婴用品 6家居建材 7百货食品 8运动户外 9文化娱乐 10生活服务 11汽摩配件 12游戏话费） 数据库字段是：category_limits  <br>
     */
    private String categoryLimits;

    /**
     * 淘气值限制 1:0-199 2:200-399 3:400-599 4:600-799 5:800-999 6:1000-1999 7:2000-2499  8:2500以上 数据库字段是：naughty_limit  <br>
     */
    private Integer naughtyLimit;

    /**
     * 花呗 是否开通花呗 （2元每单   优质的账号） 数据库字段是：huabei  <br>
     */
    private Integer huabei;

    /**
     * 试客账号等级（2心起 4心起  5心起  1砖起 2砖起） 数据库字段是：account_level  <br>
     */
    private Integer accountLevel;

    /**
     * 试客评价（不评价，只确认收货  5星好评无文字  5星好评附文字  优质好评【这个需要自己输入】  优质好评，买家自由发挥  图文好评） 数据库字段是：evaluation  <br>
     */
    private Integer evaluation;

    /**
     * 如果选择优质好评，需要商家给出模板 数据库字段是：evaluation_detail  <br>
     */
    private String evaluationDetail;

    /**
     * 追加评论（1.不需要 2.需要） 数据库字段是：additional_evaluation  <br>
     */
    private Integer additionalEvaluation;

    /**
     * 完成时间（1.5小时内  1小时内  45分钟内   半小时内） 数据库字段是：completion  <br>
     */
    private Integer completion;

    /**
     * 每单加赏金（0-5） 数据库字段是：additonal_bounty  <br>
     */
    private Integer additonalBounty;

    /**
     * 获取试客标签 需要？【5金币一单】
     * @return task_valueAddedServices.try_the_gurst_tag
     */
    public Integer getTryTheGurstTag() {
        return tryTheGurstTag;
    }

    /**
     * 设置试客标签 需要？【5金币一单】
     * @param tryTheGurstTag 试客标签 需要？【5金币一单】
     */
    public void setTryTheGurstTag(Integer tryTheGurstTag) {
        this.tryTheGurstTag = tryTheGurstTag;
    }

    /**
     * 获取地域限制 （以下所选地区 可接该活动  +0.5每单）
     * @return task_valueAddedServices.regional_restrictions
     */
    public String getRegionalRestrictions() {
        return regionalRestrictions;
    }

    /**
     * 设置地域限制 （以下所选地区 可接该活动  +0.5每单）
     * @param regionalRestrictions 地域限制 （以下所选地区 可接该活动  +0.5每单）
     */
    public void setRegionalRestrictions(String regionalRestrictions) {
        this.regionalRestrictions = regionalRestrictions == null ? null : regionalRestrictions.trim();
    }

    /**
     * 获取年龄限制 （仅仅选择年龄段用户  1：18-25 2：26-35 3：35及以上
     * @return task_valueAddedServices.age_limit
     */
    public Integer getAgeLimit() {
        return ageLimit;
    }

    /**
     * 设置年龄限制 （仅仅选择年龄段用户  1：18-25 2：26-35 3：35及以上
     * @param ageLimit 年龄限制 （仅仅选择年龄段用户  1：18-25 2：26-35 3：35及以上
     */
    public void setAgeLimit(Integer ageLimit) {
        this.ageLimit = ageLimit;
    }

    /**
     * 获取性别限制（仅限选择性别用户，可接该活动 0.5一单  1：男  2：女）
     * @return task_valueAddedServices.gender_restrictions
     */
    public Integer getGenderRestrictions() {
        return genderRestrictions;
    }

    /**
     * 设置性别限制（仅限选择性别用户，可接该活动 0.5一单  1：男  2：女）
     * @param genderRestrictions 性别限制（仅限选择性别用户，可接该活动 0.5一单  1：男  2：女）
     */
    public void setGenderRestrictions(Integer genderRestrictions) {
        this.genderRestrictions = genderRestrictions;
    }

    /**
     * 获取类别限制 仅限常购该类目的用户 （1服装鞋包 2手机数码 3家用电器 4美妆饰品 5母婴用品 6家居建材 7百货食品 8运动户外 9文化娱乐 10生活服务 11汽摩配件 12游戏话费）
     * @return task_valueAddedServices.category_limits
     */
    public String getCategoryLimits() {
        return categoryLimits;
    }

    /**
     * 设置类别限制 仅限常购该类目的用户 （1服装鞋包 2手机数码 3家用电器 4美妆饰品 5母婴用品 6家居建材 7百货食品 8运动户外 9文化娱乐 10生活服务 11汽摩配件 12游戏话费）
     * @param categoryLimits 类别限制 仅限常购该类目的用户 （1服装鞋包 2手机数码 3家用电器 4美妆饰品 5母婴用品 6家居建材 7百货食品 8运动户外 9文化娱乐 10生活服务 11汽摩配件 12游戏话费）
     */
    public void setCategoryLimits(String categoryLimits) {
        this.categoryLimits = categoryLimits == null ? null : categoryLimits.trim();
    }

    /**
     * 获取淘气值限制 1:0-199 2:200-399 3:400-599 4:600-799 5:800-999 6:1000-1999 7:2000-2499  8:2500以上
     * @return task_valueAddedServices.naughty_limit
     */
    public Integer getNaughtyLimit() {
        return naughtyLimit;
    }

    /**
     * 设置淘气值限制 1:0-199 2:200-399 3:400-599 4:600-799 5:800-999 6:1000-1999 7:2000-2499  8:2500以上
     * @param naughtyLimit 淘气值限制 1:0-199 2:200-399 3:400-599 4:600-799 5:800-999 6:1000-1999 7:2000-2499  8:2500以上
     */
    public void setNaughtyLimit(Integer naughtyLimit) {
        this.naughtyLimit = naughtyLimit;
    }

    /**
     * 获取花呗 是否开通花呗 （2元每单   优质的账号）
     * @return task_valueAddedServices.huabei
     */
    public Integer getHuabei() {
        return huabei;
    }

    /**
     * 设置花呗 是否开通花呗 （2元每单   优质的账号）
     * @param huabei 花呗 是否开通花呗 （2元每单   优质的账号）
     */
    public void setHuabei(Integer huabei) {
        this.huabei = huabei;
    }

    /**
     * 获取试客账号等级（2心起 4心起  5心起  1砖起 2砖起）
     * @return task_valueAddedServices.account_level
     */
    public Integer getAccountLevel() {
        return accountLevel;
    }

    /**
     * 设置试客账号等级（2心起 4心起  5心起  1砖起 2砖起）
     * @param accountLevel 试客账号等级（2心起 4心起  5心起  1砖起 2砖起）
     */
    public void setAccountLevel(Integer accountLevel) {
        this.accountLevel = accountLevel;
    }

    /**
     * 获取试客评价（不评价，只确认收货  5星好评无文字  5星好评附文字  优质好评【这个需要自己输入】  优质好评，买家自由发挥  图文好评）
     * @return task_valueAddedServices.evaluation
     */
    public Integer getEvaluation() {
        return evaluation;
    }

    /**
     * 设置试客评价（不评价，只确认收货  5星好评无文字  5星好评附文字  优质好评【这个需要自己输入】  优质好评，买家自由发挥  图文好评）
     * @param evaluation 试客评价（不评价，只确认收货  5星好评无文字  5星好评附文字  优质好评【这个需要自己输入】  优质好评，买家自由发挥  图文好评）
     */
    public void setEvaluation(Integer evaluation) {
        this.evaluation = evaluation;
    }

    /**
     * 获取如果选择优质好评，需要商家给出模板
     * @return task_valueAddedServices.evaluation_detail
     */
    public String getEvaluationDetail() {
        return evaluationDetail;
    }

    /**
     * 设置如果选择优质好评，需要商家给出模板
     * @param evaluationDetail 如果选择优质好评，需要商家给出模板
     */
    public void setEvaluationDetail(String evaluationDetail) {
        this.evaluationDetail = evaluationDetail == null ? null : evaluationDetail.trim();
    }

    /**
     * 获取追加评论（1.不需要 2.需要）
     * @return task_valueAddedServices.additional_evaluation
     */
    public Integer getAdditionalEvaluation() {
        return additionalEvaluation;
    }

    /**
     * 设置追加评论（1.不需要 2.需要）
     * @param additionalEvaluation 追加评论（1.不需要 2.需要）
     */
    public void setAdditionalEvaluation(Integer additionalEvaluation) {
        this.additionalEvaluation = additionalEvaluation;
    }

    /**
     * 获取完成时间（1.5小时内  1小时内  45分钟内   半小时内）
     * @return task_valueAddedServices.completion
     */
    public Integer getCompletion() {
        return completion;
    }

    /**
     * 设置完成时间（1.5小时内  1小时内  45分钟内   半小时内）
     * @param completion 完成时间（1.5小时内  1小时内  45分钟内   半小时内）
     */
    public void setCompletion(Integer completion) {
        this.completion = completion;
    }

    /**
     * 获取每单加赏金（0-5）
     * @return task_valueAddedServices.additonal_bounty
     */
    public Integer getAdditonalBounty() {
        return additonalBounty;
    }

    /**
     * 设置每单加赏金（0-5）
     * @param additonalBounty 每单加赏金（0-5）
     */
    public void setAdditonalBounty(Integer additonalBounty) {
        this.additonalBounty = additonalBounty;
    }
}