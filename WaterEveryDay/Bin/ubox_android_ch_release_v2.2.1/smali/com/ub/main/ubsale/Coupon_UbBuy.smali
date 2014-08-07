.class public Lcom/ub/main/ubsale/Coupon_UbBuy;
.super Lcom/ub/main/BaseActivity;
.source "Coupon_UbBuy.java"

# interfaces
.implements Lcom/ub/main/net/ImageLoadingObserver;
.implements Lcom/ub/main/data/PayResultProcessListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I = null

.field private static final IMAGE_LOAD1:I = 0x2710

.field private static final IMAGE_LOAD2:I = 0x2711

.field private static final IMAGE_LOAD3:I = 0x2712

.field private static final REQUEST_ID_BUYWAY_LIST:I = 0x1

.field private static final REQUEST_ID_YOUHUI_LIST:I


# instance fields
.field private account:Lcom/ub/main/data/CreditCardAccountInfo;

.field private alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

.field private backBtn:Landroid/widget/Button;

.field private coupon_icon:Ljava/lang/String;

.field private coupon_id:Ljava/lang/String;

.field private coupon_info:Ljava/lang/String;

.field private coupon_title:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasCoupon:Z

.field private imageUrlList:Ljava/lang/String;

.field img:Landroid/widget/ImageView;

.field private imgviewCoupon:Landroid/widget/ImageView;

.field private imgviewPromotion:Landroid/widget/ImageView;

.field private order_id:Ljava/lang/String;

.field private order_product_id:Ljava/lang/String;

.field private order_product_num:Ljava/lang/String;

.field private pay_type:I

.field private pid:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_price:Ljava/lang/String;

.field promotion:Lcom/ub/main/data/Promotion;

.field tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ubox_vmid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/ub/main/ubsale/Coupon_UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ub/main/util/NetConfig$HttpRequestId;->values()[Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->ADD_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_36

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_35

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->BIND_PHONE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_34

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->CANCEL_GET_UBOX_PRODUCT:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_33

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->CANCEL_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_32

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_31

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->DELETE_CREDIT_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_30

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FEEDBACK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_CANCELFOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_FOOD_GETGOODS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_FOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETFAVORLIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDERFOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_29

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_28

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_LOCKFOOD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_27

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_CREDIT_CARD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_26

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_NEARBY_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_25

    :goto_12
    :try_start_12
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_24

    :goto_13
    :try_start_13
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_CHANNELINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_23

    :goto_14
    :try_start_14
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_SMS_VALIDATECODE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_22

    :goto_15
    :try_start_15
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_UBOX_PRODUCT:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_21

    :goto_16
    :try_start_16
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_20

    :goto_17
    :try_start_17
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1f

    :goto_18
    :try_start_18
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMLINFO_BY_COUPONID:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1e

    :goto_19
    :try_start_19
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->INCOM_DETAIL:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1d

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->LOGIN:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1c

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MODIFY_PASSWORD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CINEMA:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1a

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_19

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY_FILM:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_18

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_FILM_PLAN:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_17

    :goto_20
    :try_start_20
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_GPS_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_16

    :goto_21
    :try_start_21
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_15

    :goto_22
    :try_start_22
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER_DETAIL:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_14

    :goto_23
    :try_start_23
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_13

    :goto_24
    :try_start_24
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_REGET_TICKET:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_12

    :goto_25
    :try_start_25
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_SEAT_STATUS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_11

    :goto_26
    :try_start_26
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->NOT_EXIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_10

    :goto_27
    :try_start_27
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->ON_WORK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_f

    :goto_28
    :try_start_28
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_e

    :goto_29
    :try_start_29
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_d

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_FOR_UBOX_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_c

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->RECHARGE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_b

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->REGISTER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_a

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->RESET_PAASSWORD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_9

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->RESET_PASSWD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_8

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->SEARCH_ORDER_STATUS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_7

    :goto_30
    :try_start_30
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_CREATE_COUPON:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_6

    :goto_31
    :try_start_31
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_GET_APP_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_5

    :goto_32
    :try_start_32
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_RECEIVE_TASK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_4

    :goto_33
    :try_start_33
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_3

    :goto_34
    :try_start_34
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_HOME_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2

    :goto_35
    :try_start_35
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_HOME_LIST_NEW:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_1

    :goto_36
    :try_start_36
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_USE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_0

    :goto_37
    sput-object v0, Lcom/ub/main/ubsale/Coupon_UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_37

    :catch_1
    move-exception v1

    goto :goto_36

    :catch_2
    move-exception v1

    goto :goto_35

    :catch_3
    move-exception v1

    goto :goto_34

    :catch_4
    move-exception v1

    goto :goto_33

    :catch_5
    move-exception v1

    goto :goto_32

    :catch_6
    move-exception v1

    goto :goto_31

    :catch_7
    move-exception v1

    goto :goto_30

    :catch_8
    move-exception v1

    goto :goto_2f

    :catch_9
    move-exception v1

    goto :goto_2e

    :catch_a
    move-exception v1

    goto :goto_2d

    :catch_b
    move-exception v1

    goto/16 :goto_2c

    :catch_c
    move-exception v1

    goto/16 :goto_2b

    :catch_d
    move-exception v1

    goto/16 :goto_2a

    :catch_e
    move-exception v1

    goto/16 :goto_29

    :catch_f
    move-exception v1

    goto/16 :goto_28

    :catch_10
    move-exception v1

    goto/16 :goto_27

    :catch_11
    move-exception v1

    goto/16 :goto_26

    :catch_12
    move-exception v1

    goto/16 :goto_25

    :catch_13
    move-exception v1

    goto/16 :goto_24

    :catch_14
    move-exception v1

    goto/16 :goto_23

    :catch_15
    move-exception v1

    goto/16 :goto_22

    :catch_16
    move-exception v1

    goto/16 :goto_21

    :catch_17
    move-exception v1

    goto/16 :goto_20

    :catch_18
    move-exception v1

    goto/16 :goto_1f

    :catch_19
    move-exception v1

    goto/16 :goto_1e

    :catch_1a
    move-exception v1

    goto/16 :goto_1d

    :catch_1b
    move-exception v1

    goto/16 :goto_1c

    :catch_1c
    move-exception v1

    goto/16 :goto_1b

    :catch_1d
    move-exception v1

    goto/16 :goto_1a

    :catch_1e
    move-exception v1

    goto/16 :goto_19

    :catch_1f
    move-exception v1

    goto/16 :goto_18

    :catch_20
    move-exception v1

    goto/16 :goto_17

    :catch_21
    move-exception v1

    goto/16 :goto_16

    :catch_22
    move-exception v1

    goto/16 :goto_15

    :catch_23
    move-exception v1

    goto/16 :goto_14

    :catch_24
    move-exception v1

    goto/16 :goto_13

    :catch_25
    move-exception v1

    goto/16 :goto_12

    :catch_26
    move-exception v1

    goto/16 :goto_11

    :catch_27
    move-exception v1

    goto/16 :goto_10

    :catch_28
    move-exception v1

    goto/16 :goto_f

    :catch_29
    move-exception v1

    goto/16 :goto_e

    :catch_2a
    move-exception v1

    goto/16 :goto_d

    :catch_2b
    move-exception v1

    goto/16 :goto_c

    :catch_2c
    move-exception v1

    goto/16 :goto_b

    :catch_2d
    move-exception v1

    goto/16 :goto_a

    :catch_2e
    move-exception v1

    goto/16 :goto_9

    :catch_2f
    move-exception v1

    goto/16 :goto_8

    :catch_30
    move-exception v1

    goto/16 :goto_7

    :catch_31
    move-exception v1

    goto/16 :goto_6

    :catch_32
    move-exception v1

    goto/16 :goto_5

    :catch_33
    move-exception v1

    goto/16 :goto_4

    :catch_34
    move-exception v1

    goto/16 :goto_3

    :catch_35
    move-exception v1

    goto/16 :goto_2

    :catch_36
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->title:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;

    .line 88
    const-string v0, "1"

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_num:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_price:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_name:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pid:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/ub/main/ubsale/Coupon_UbBuy$1;

    invoke-direct {v0, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$1;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->handler:Landroid/os/Handler;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->hasCoupon:Z

    .line 435
    const-string v0, "Coupon_UbBuy"

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->tag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/ubsale/Coupon_UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->doPay()V

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/ubsale/Coupon_UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->goToGetProductActivity()V

    return-void
.end method

.method private doOrder()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/ubsale/Coupon_UbBuy$2;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$2;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/ubsale/Coupon_UbBuy$3;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$3;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 313
    return-void
.end method

.method private doPay()V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "order_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 321
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createPayByBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/Coupon_UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private goToGetProductActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    iget-object v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KEY_PARAM_PRODUCT_NAME==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "vmid"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "order_id"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, "price"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_price:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "title"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "productName"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "urls"

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "inputtype"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 375
    const-class v1, Lcom/ub/main/ubsale/UbQuHuo;

    const/4 v2, 0x6

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method private initData()V
    .locals 7

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 201
    .local v6, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 202
    sget-object v0, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_id:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/ub/main/util/Tool;->VMID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;

    .line 205
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMLINFO_BY_COUPONID:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 206
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetVmlInfoCouponID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 208
    const-string v5, "\u5224\u65ad\u552e\u8d27\u673a\u662f\u5426\u6709\u8be5\u4f18\u60e0\u5238\u5546\u54c1..."

    move-object v0, p0

    move-object v4, p0

    .line 205
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/Coupon_UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 211
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 212
    sget-object v0, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u7528\u6237\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/Coupon_UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const v4, 0x7f080090

    const/4 v1, 0x0

    .line 218
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 219
    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v2, 0x7f080095

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v2, 0x7f080096

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0, v4}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->img:Landroid/widget/ImageView;

    .line 226
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 229
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->img:Landroid/widget/ImageView;

    .line 230
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    .line 228
    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 231
    .local v0, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v9, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->handler:Landroid/os/Handler;

    invoke-direct {v9, v10, v2, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    .line 234
    .local v9, imageLoading:Lcom/ub/main/net/ImageLoading;
    invoke-virtual {v9}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 237
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v9           #imageLoading:Lcom/ub/main/net/ImageLoading;
    .end local v10           #tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_0
    const v2, 0x7f080094

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    .line 238
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_icon:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_icon:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/4 v3, 0x1

    .line 240
    iget-object v4, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_icon:Ljava/lang/String;

    iget-object v5, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const v6, 0x7f0200d1

    .line 241
    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v2, v0

    move-object v7, p0

    .line 239
    invoke-direct/range {v2 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 242
    .restart local v0       #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .restart local v10       #tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v9, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->handler:Landroid/os/Handler;

    invoke-direct {v9, v10, v2, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    .line 245
    .restart local v9       #imageLoading:Lcom/ub/main/net/ImageLoading;
    invoke-virtual {v9}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 249
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v9           #imageLoading:Lcom/ub/main/net/ImageLoading;
    .end local v10           #tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_1
    iput v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    .line 251
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initControl()V

    .line 252
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v2, "200"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    invoke-static {}, Lcom/ub/main/ubsale/Coupon_UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 443
    :sswitch_0
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->goToGetProductActivity()V

    goto :goto_0

    .line 447
    :sswitch_1
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v2

    .line 446
    sput-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 448
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v2, :cond_1

    .line 449
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 450
    const-string v3, "pt_ActId"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    if-eqz v2, :cond_1

    .line 451
    new-instance v2, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v2}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 452
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 453
    const-string v4, "pt_ActId"

    invoke-virtual {v3, v4}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 455
    :cond_1
    const v2, 0x7f08009a

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f59\u989d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    sget-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 457
    const-string v5, "balance"

    invoke-virtual {v4, v5}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 457
    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :sswitch_2
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, couponStatus:Ljava/lang/String;
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 465
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 467
    const-string v3, "\u786e\u5b9a"

    .line 468
    new-instance v4, Lcom/ub/main/ubsale/Coupon_UbBuy$5;

    invoke-direct {v4, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$5;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    .line 467
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 477
    :cond_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "vminfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    .line 479
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "price"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_price:Ljava/lang/String;

    .line 480
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->product_name:Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "picBig"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imageUrlList:Ljava/lang/String;

    .line 482
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_title:Ljava/lang/String;

    .line 483
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "channel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_info:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "icon_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_icon:Ljava/lang/String;

    .line 485
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;

    .line 486
    const v2, 0x7f08008f

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initView()V

    .line 488
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initControl()V

    goto/16 :goto_0

    .line 494
    .end local v0           #couponStatus:Ljava/lang/String;
    .end local v1           #msg:Ljava/lang/String;
    :sswitch_3
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "order_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->doPay()V

    goto/16 :goto_0

    .line 499
    :cond_3
    sget-object v2, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMLINFO_BY_COUPONID:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 500
    invoke-virtual {v2, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 501
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 503
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 504
    const-string v3, "\u786e\u5b9a"

    .line 505
    new-instance v4, Lcom/ub/main/ubsale/Coupon_UbBuy$6;

    invoke-direct {v4, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$6;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    .line 504
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 513
    :cond_4
    sget-object v2, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v2, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xc -> :sswitch_3
        0x17 -> :sswitch_0
        0x37 -> :sswitch_2
    .end sparse-switch
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 3
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 532
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->img:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 536
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewPromotion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewPromotion:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 538
    :cond_2
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public YEClick(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 260
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    .line 264
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->doOrder()V

    .line 267
    :cond_0
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->finish()V

    .line 276
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 411
    sparse-switch p1, :sswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 413
    :sswitch_0
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->finish()V

    goto :goto_0

    .line 416
    :sswitch_1
    const-string v0, "0"

    .line 417
    .local v0, id:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 418
    const-string v0, "0"

    .line 422
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    .line 423
    iget v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    if-nez v1, :cond_2

    .line 424
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4f59\u989d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 426
    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    :cond_1
    const-string v1, "id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 427
    :cond_2
    iget v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 428
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u4f59\u989d--\u5143"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->finish()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009b

    if-ne v0, v1, :cond_0

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->pay_type:I

    .line 526
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->doOrder()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->setContentView(I)V

    .line 148
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->backBtn:Landroid/widget/Button;

    .line 150
    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->backBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, title1:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    const-string v2, "\u8ba2\u5355\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initView()V

    .line 157
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initData()V

    .line 158
    invoke-direct {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->initControl()V

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 380
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;

    .line 386
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 387
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 393
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->back()V

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 404
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 405
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "payChannelID"
    .parameter "behavorID"
    .parameter "param"
    .parameter "ObjectParam"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_0

    .line 355
    .end local p4
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 356
    return-void

    .line 332
    .restart local p4
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 336
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p4, Landroid/app/Activity;

    .end local p4
    invoke-direct {v0, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    const-string v1, "\u4ed8\u6b3e\u6210\u529f\u8bf7\u70b9\u51fb\"\u786e\u5b9a\"\uff0c\u51c6\u5907\u53d6\u8d27\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 339
    const-string v1, "\u786e\u5b9a"

    .line 340
    new-instance v2, Lcom/ub/main/ubsale/Coupon_UbBuy$4;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/Coupon_UbBuy$4;-><init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 332
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
