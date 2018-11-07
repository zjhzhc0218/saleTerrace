package deepdraw.saleterrace.entity.shop;

import java.math.BigDecimal;

public class TaskBabysearch {
    /**
     * 宝贝搜索设置ID  数据库字段是：babySearchId  <br>
     */
    private Long babysearchid;

    /**
     * 宝贝搜索设置对应的活动总编号  数据库字段是：task_id  <br>
     */
    private Long taskId;

    /**
     * 前置副关键词 数据库字段是：pre_deputy_keyword1  <br>
     */
    private String preDeputyKeyword1;

    /**
     * 排序方式 数据库字段是：order  <br>
     */
    private Integer order;

    /**
     * 筛选条件多选,拼接字符串 数据库字段是：filter  <br>
     */
    private String filter;

    /**
     * 价格前区间 数据库字段是：price_before  <br>
     */
    private BigDecimal priceBefore;

    /**
     * 价格后区间 数据库字段是：price_after  <br>
     */
    private BigDecimal priceAfter;

    /**
     * 发货地 数据库字段是：palce_of_dispatch  <br>
     */
    private String palceOfDispatch;

    /**
     * 竞品1浏览要求  【1.主宝贝浏览见底【默认】  2.评价浏览   3.问大家浏览    4.旺旺聊天   5.收藏宝贝  6.收藏店铺   7.加入购物车   8.下单不付款】 数据库字段是：browse_the_requirements  <br>
     */
    private String browseTheRequirements;

    /**
     * 增加竞品 【最多增加4个竞品】--弃置 代用（这是数量表示多拍的数量） 数据库字段是：add_competing_goods  <br>
     */
    private Integer addCompetingGoods;

    /**
     * 添加前置搜索关键词2，再增加一层关键词 数据库字段是：pre_deputy_keyword2  <br>
     */
    private String preDeputyKeyword2;

    /**
     * 宝贝主图，图片 数据库字段是：main_photo_baby  <br>
     */
    private String mainPhotoBaby;

    /**
     * 搜索关键词 数据库字段是：search_keywords  <br>
     */
    private String searchKeywords;

    /**
     * 搜索列表展示价格（最多保存二位小数） 数据库字段是：search_price  <br>
     */
    private BigDecimal searchPrice;

    /**
     * 宝贝位置 数据库字段是：baby location  <br>
     */
    private Integer babyLocation;

    /**
     * 平台协议 -默认都是通过的。默认是1 数据库字段是：platform_agreement  <br>
     */
    private Integer platformAgreement;

    /**
     * 获取宝贝搜索设置ID
     * @return task_babySearch.babySearchId
     */
    public Long getBabysearchid() {
        return babysearchid;
    }

    /**
     * 设置宝贝搜索设置ID
     * @param babysearchid 宝贝搜索设置ID
     */
    public void setBabysearchid(Long babysearchid) {
        this.babysearchid = babysearchid;
    }

    /**
     * 获取宝贝搜索设置对应的活动总编号 
     * @return task_babySearch.task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * 设置宝贝搜索设置对应的活动总编号 
     * @param taskId 宝贝搜索设置对应的活动总编号 
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * 获取前置副关键词
     * @return task_babySearch.pre_deputy_keyword1
     */
    public String getPreDeputyKeyword1() {
        return preDeputyKeyword1;
    }

    /**
     * 设置前置副关键词
     * @param preDeputyKeyword1 前置副关键词
     */
    public void setPreDeputyKeyword1(String preDeputyKeyword1) {
        this.preDeputyKeyword1 = preDeputyKeyword1 == null ? null : preDeputyKeyword1.trim();
    }

    /**
     * 获取排序方式
     * @return task_babySearch.order
     */
    public Integer getOrder() {
        return order;
    }

    /**
     * 设置排序方式
     * @param order 排序方式
     */
    public void setOrder(Integer order) {
        this.order = order;
    }

    /**
     * 获取筛选条件多选,拼接字符串
     * @return task_babySearch.filter
     */
    public String getFilter() {
        return filter;
    }

    /**
     * 设置筛选条件多选,拼接字符串
     * @param filter 筛选条件多选,拼接字符串
     */
    public void setFilter(String filter) {
        this.filter = filter == null ? null : filter.trim();
    }

    /**
     * 获取价格前区间
     * @return task_babySearch.price_before
     */
    public BigDecimal getPriceBefore() {
        return priceBefore;
    }

    /**
     * 设置价格前区间
     * @param priceBefore 价格前区间
     */
    public void setPriceBefore(BigDecimal priceBefore) {
        this.priceBefore = priceBefore;
    }

    /**
     * 获取价格后区间
     * @return task_babySearch.price_after
     */
    public BigDecimal getPriceAfter() {
        return priceAfter;
    }

    /**
     * 设置价格后区间
     * @param priceAfter 价格后区间
     */
    public void setPriceAfter(BigDecimal priceAfter) {
        this.priceAfter = priceAfter;
    }

    /**
     * 获取发货地
     * @return task_babySearch.palce_of_dispatch
     */
    public String getPalceOfDispatch() {
        return palceOfDispatch;
    }

    /**
     * 设置发货地
     * @param palceOfDispatch 发货地
     */
    public void setPalceOfDispatch(String palceOfDispatch) {
        this.palceOfDispatch = palceOfDispatch == null ? null : palceOfDispatch.trim();
    }

    /**
     * 获取竞品1浏览要求  【1.主宝贝浏览见底【默认】  2.评价浏览   3.问大家浏览    4.旺旺聊天   5.收藏宝贝  6.收藏店铺   7.加入购物车   8.下单不付款】
     * @return task_babySearch.browse_the_requirements
     */
    public String getBrowseTheRequirements() {
        return browseTheRequirements;
    }

    /**
     * 设置竞品1浏览要求  【1.主宝贝浏览见底【默认】  2.评价浏览   3.问大家浏览    4.旺旺聊天   5.收藏宝贝  6.收藏店铺   7.加入购物车   8.下单不付款】
     * @param browseTheRequirements 竞品1浏览要求  【1.主宝贝浏览见底【默认】  2.评价浏览   3.问大家浏览    4.旺旺聊天   5.收藏宝贝  6.收藏店铺   7.加入购物车   8.下单不付款】
     */
    public void setBrowseTheRequirements(String browseTheRequirements) {
        this.browseTheRequirements = browseTheRequirements == null ? null : browseTheRequirements.trim();
    }

    /**
     * 获取增加竞品 【最多增加4个竞品】--弃置 代用（这是数量表示多拍的数量）
     * @return task_babySearch.add_competing_goods
     */
    public Integer getAddCompetingGoods() {
        return addCompetingGoods;
    }

    /**
     * 设置增加竞品 【最多增加4个竞品】--弃置 代用（这是数量表示多拍的数量）
     * @param addCompetingGoods 增加竞品 【最多增加4个竞品】--弃置 代用（这是数量表示多拍的数量）
     */
    public void setAddCompetingGoods(Integer addCompetingGoods) {
        this.addCompetingGoods = addCompetingGoods;
    }

    /**
     * 获取添加前置搜索关键词2，再增加一层关键词
     * @return task_babySearch.pre_deputy_keyword2
     */
    public String getPreDeputyKeyword2() {
        return preDeputyKeyword2;
    }

    /**
     * 设置添加前置搜索关键词2，再增加一层关键词
     * @param preDeputyKeyword2 添加前置搜索关键词2，再增加一层关键词
     */
    public void setPreDeputyKeyword2(String preDeputyKeyword2) {
        this.preDeputyKeyword2 = preDeputyKeyword2 == null ? null : preDeputyKeyword2.trim();
    }

    /**
     * 获取宝贝主图，图片
     * @return task_babySearch.main_photo_baby
     */
    public String getMainPhotoBaby() {
        return mainPhotoBaby;
    }

    /**
     * 设置宝贝主图，图片
     * @param mainPhotoBaby 宝贝主图，图片
     */
    public void setMainPhotoBaby(String mainPhotoBaby) {
        this.mainPhotoBaby = mainPhotoBaby == null ? null : mainPhotoBaby.trim();
    }

    /**
     * 获取搜索关键词
     * @return task_babySearch.search_keywords
     */
    public String getSearchKeywords() {
        return searchKeywords;
    }

    /**
     * 设置搜索关键词
     * @param searchKeywords 搜索关键词
     */
    public void setSearchKeywords(String searchKeywords) {
        this.searchKeywords = searchKeywords == null ? null : searchKeywords.trim();
    }

    /**
     * 获取搜索列表展示价格（最多保存二位小数）
     * @return task_babySearch.search_price
     */
    public BigDecimal getSearchPrice() {
        return searchPrice;
    }

    /**
     * 设置搜索列表展示价格（最多保存二位小数）
     * @param searchPrice 搜索列表展示价格（最多保存二位小数）
     */
    public void setSearchPrice(BigDecimal searchPrice) {
        this.searchPrice = searchPrice;
    }

    /**
     * 获取宝贝位置
     * @return task_babySearch.baby location
     */
    public Integer getBabyLocation() {
        return babyLocation;
    }

    /**
     * 设置宝贝位置
     * @param babyLocation 宝贝位置
     */
    public void setBabyLocation(Integer babyLocation) {
        this.babyLocation = babyLocation;
    }

    /**
     * 获取平台协议 -默认都是通过的。默认是1
     * @return task_babySearch.platform_agreement
     */
    public Integer getPlatformAgreement() {
        return platformAgreement;
    }

    /**
     * 设置平台协议 -默认都是通过的。默认是1
     * @param platformAgreement 平台协议 -默认都是通过的。默认是1
     */
    public void setPlatformAgreement(Integer platformAgreement) {
        this.platformAgreement = platformAgreement;
    }
}