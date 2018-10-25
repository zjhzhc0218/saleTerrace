package deepdraw.saleterrace.entity.shop;

import java.util.Date;

/**
 * 店铺
 */
public class ShopstoreEntity {

    private long shopId;
    private String shopName;
    private String shopType;
    private String shopUsername;
    private String shopShopkeeper;
    private String shopImg;
    private Date shopSettime;
    private String shopStatus;
    private Date shopInterval;
    private String shopAsk;


    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }


    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }


    public String getShopType() {
        return shopType;
    }

    public void setShopType(String shopType) {
        this.shopType = shopType;
    }


    public String getShopUsername() {
        return shopUsername;
    }

    public void setShopUsername(String shopUsername) {
        this.shopUsername = shopUsername;
    }


    public String getShopShopkeeper() {
        return shopShopkeeper;
    }

    public void setShopShopkeeper(String shopShopkeeper) {
        this.shopShopkeeper = shopShopkeeper;
    }


    public String getShopImg() {
        return shopImg;
    }

    public void setShopImg(String shopImg) {
        this.shopImg = shopImg;
    }


    public Date getShopSettime() {
        return shopSettime;
    }

    public void setShopSettime(Date shopSettime) {
        this.shopSettime = shopSettime;
    }


    public String getShopStatus() {
        return shopStatus;
    }

    public void setShopStatus(String shopStatus) {
        this.shopStatus = shopStatus;
    }


    public Date getShopInterval() {
        return shopInterval;
    }

    public void setShopInterval(Date shopInterval) {
        this.shopInterval = shopInterval;
    }


    public String getShopAsk() {
        return shopAsk;
    }

    public void setShopAsk(String shopAsk) {
        this.shopAsk = shopAsk;
    }

}
