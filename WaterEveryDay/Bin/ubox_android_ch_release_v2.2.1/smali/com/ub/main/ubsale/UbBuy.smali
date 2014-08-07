.class public Lcom/ub/main/ubsale/UbBuy;
.super Lcom/ub/main/BaseActivity;
.source "UbBuy.java"

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

.field coupon:Lcom/ub/main/data/Coupon;

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

.field private title:Ljava/lang/String;

.field private ubox_saleMachine_id:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/ub/main/ubsale/UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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
    sput-object v0, Lcom/ub/main/ubsale/UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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
    .line 48
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->imageUrlList:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->title:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;

    .line 90
    const-string v0, "1"

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_num:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->pid:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/ub/main/ubsale/UbBuy$1;

    invoke-direct {v0, p0}, Lcom/ub/main/ubsale/UbBuy$1;-><init>(Lcom/ub/main/ubsale/UbBuy;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->handler:Landroid/os/Handler;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbBuy;->hasCoupon:Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/ubsale/UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->doPay()V

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/ubsale/UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->goToGetProductActivity()V

    return-void
.end method

.method private doOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 429
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 430
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/ubsale/UbBuy$3;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbBuy$3;-><init>(Lcom/ub/main/ubsale/UbBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 437
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/ubsale/UbBuy$4;

    invoke-direct {v2, p0, p1}, Lcom/ub/main/ubsale/UbBuy$4;-><init>(Lcom/ub/main/ubsale/UbBuy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 462
    return-void
.end method

.method private doPay()V
    .locals 9

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, price:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v8

    .line 565
    :cond_0
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 566
    .local v7, numPrice:Ljava/lang/Float;
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, -0x414f39085f4a1273L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 570
    :cond_1
    iget v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 574
    :pswitch_0
    new-instance v0, Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 576
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;->SetPayResultBehaviorListener(Lcom/ub/main/data/PayResultProcessListener;)V

    .line 578
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->alixToolInstalledCheck()Z

    move-result v6

    .line 580
    .local v6, alixToolIsExist:Z
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ub/main/util/alipay/AlixMainManager;->setOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, v6}, Lcom/ub/main/util/alipay/AlixMainManager;->makeOrderToAlix(Z)Z

    goto :goto_0

    .line 587
    .end local v6           #alixToolIsExist:Z
    :pswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 588
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createPayByEposString(Ljava/lang/String;Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string v5, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :pswitch_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 593
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createPayByBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    const-string v5, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 592
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBestCoupon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->pid:Ljava/lang/String;

    .line 810
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 811
    const-string v0, "10000"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->pid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-static {v4, v4, v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createGetBestCouponPostString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 812
    const-string v5, "\u6b63\u5728\u68c0\u67e5\u662f\u5426\u6709\u4f18\u60e0\u5238\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 810
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method private goToGetProductActivity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "vmid"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "order_id"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v1, "price"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v1, "title"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "productName"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "urls"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->imageUrlList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v1, "inputtype"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    sput-boolean v5, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 663
    const-class v1, Lcom/ub/main/ubsale/UbQuHuo;

    const/4 v2, 0x6

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 664
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private initData()V
    .locals 12

    .prologue
    const v4, 0x7f0800b3

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 179
    .local v8, bundle:Landroid/os/Bundle;
    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 180
    const-string v2, "vmid"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    .line 181
    const-string v2, "title"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->title:Ljava/lang/String;

    .line 182
    const-string v2, "pid"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;

    .line 183
    const-string v2, "price"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    .line 184
    const-string v2, "productName"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    .line 185
    const-string v2, "urls"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->imageUrlList:Ljava/lang/String;

    .line 186
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "imageUrlList="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/ubsale/UbBuy;->imageUrlList:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, v4}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->img:Landroid/widget/ImageView;

    .line 189
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 190
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->imageUrlList:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->img:Landroid/widget/ImageView;

    .line 193
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 194
    .local v0, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v11, tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v10, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->handler:Landroid/os/Handler;

    invoke-direct {v10, v11, v2, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    .line 197
    .local v10, imageLoading:Lcom/ub/main/net/ImageLoading;
    invoke-virtual {v10}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 213
    const v9, 0x7fffffff

    .line 214
    .local v9, entrance:I
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 215
    sget-object v2, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    const-string v7, "\u6b63\u5728\u83b7\u53d6\u7528\u6237\u4fe1\u606f..."

    move-object v2, p0

    move-object v5, p0

    move-object v6, p0

    .line 214
    invoke-virtual/range {v2 .. v7}, Lcom/ub/main/ubsale/UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 218
    iput v1, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 219
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    .line 223
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 224
    .local v7, head:Landroid/view/ViewGroup;
    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->backBtn:Landroid/widget/Button;

    .line 225
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->backBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    const v1, 0x7f0800e7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 235
    .local v10, title1:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    const-string v1, "\u8ba2\u5355\u652f\u4ed8"

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v1, 0x7f08010c

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ub/main/ubsale/UbBuy;->product_price:Ljava/lang/String;

    const-string v5, "\uffe5"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 241
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v1, :cond_2

    .line 242
    const v1, 0x7f08010c

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v4}, Lcom/ub/main/data/Coupon;->getOldprice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v4}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v1, 0x7f080093

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v3}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v3}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    .line 250
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/4 v1, 0x1

    .line 254
    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const v4, 0x7f0200d1

    .line 256
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    .line 252
    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 257
    .local v0, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v9, tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v8, Lcom/ub/main/net/ImageLoading;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v8, v9, v1, v3}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    .line 260
    .local v8, imageLoading:Lcom/ub/main/net/ImageLoading;
    invoke-virtual {v8}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 263
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v8           #imageLoading:Lcom/ub/main/net/ImageLoading;
    .end local v9           #tasklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_0
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getDiscount()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0.00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getDiscount_type_id()Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 265
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "\u514d\u8d39\u9886\u53d6"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f080171

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    .end local v2           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 271
    .restart local v2       #url:Ljava/lang/String;
    :cond_1
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "\u8d2d\u4e70"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const v1, 0x7f080171

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 279
    .end local v2           #url:Ljava/lang/String;
    :cond_2
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    .line 280
    iget-boolean v1, p0, Lcom/ub/main/ubsale/UbBuy;->hasCoupon:Z

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const v3, 0x7f0200af

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "\u4e0d\u4f7f\u7528\u4f18\u60e0\u5238"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "\u8d2d\u4e70"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v1, 0x7f080171

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 285
    :cond_3
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 286
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    const v3, 0x7f0200d2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 288
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "\u6ca1\u6709\u53ef\u4ee5\u4f7f\u7528\u7684\u4f18\u60e0\u5238"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v6, 0x7f080170

    .line 818
    const-string v2, "200"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 819
    invoke-static {}, Lcom/ub/main/ubsale/UbBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 821
    :sswitch_0
    const/4 v1, 0x0

    .line 822
    .local v1, temp:Lorg/json/JSONObject;
    const v2, 0x7f080099

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u53cb\u5b9d\u94b1\u5305"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    const v2, 0x7f080111

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f59\u989d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ub/main/ubsale/UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "couponList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "balance"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "couponList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonArray:Lorg/json/JSONArray;

    .line 826
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 827
    new-instance v2, Lcom/ub/main/data/Coupon;

    invoke-direct {v2}, Lcom/ub/main/data/Coupon;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 828
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 851
    .end local v0           #i:I
    :goto_2
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "couponList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "promotion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 852
    if-eqz v1, :cond_4

    .line 853
    new-instance v2, Lcom/ub/main/data/Promotion;

    invoke-direct {v2}, Lcom/ub/main/data/Promotion;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->promotion:Lcom/ub/main/data/Promotion;

    .line 854
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Promotion;->setTitle(Ljava/lang/String;)V

    .line 855
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v3, "brief"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Promotion;->setBrief(Ljava/lang/String;)V

    .line 856
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Promotion;->setIcon(Ljava/lang/String;)V

    .line 860
    :goto_3
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initView()V

    goto/16 :goto_0

    .line 829
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 830
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    iput-object v7, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 832
    iput-boolean v8, p0, Lcom/ub/main/ubsale/UbBuy;->hasCoupon:Z

    .line 833
    invoke-virtual {p0, v6}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 828
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
    :cond_2
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 836
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "oldPrice"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setOldprice(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "newPrice"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setNewprice(Ljava/lang/String;)V

    .line 840
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "discount_type_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setDiscount_type_id(Ljava/lang/String;)V

    .line 842
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v3, "discount"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/data/Coupon;->setDiscount(Ljava/lang/String;)V

    .line 843
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ub/main/ubsale/UbBuy;->hasCoupon:Z

    .line 844
    invoke-virtual {p0, v6}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 848
    .end local v0           #i:I
    :cond_3
    iput-object v7, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 849
    invoke-virtual {p0, v6}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 858
    :cond_4
    iput-object v7, p0, Lcom/ub/main/ubsale/UbBuy;->promotion:Lcom/ub/main/data/Promotion;

    goto/16 :goto_3

    .line 863
    .end local v1           #temp:Lorg/json/JSONObject;
    :sswitch_1
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->goToGetProductActivity()V

    goto/16 :goto_0

    .line 866
    :sswitch_2
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->goToGetProductActivity()V

    goto/16 :goto_0

    .line 869
    :sswitch_3
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v2

    sput-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 870
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v2, :cond_5

    .line 871
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v3, "pt_ActId"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 872
    new-instance v2, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v2}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 873
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 874
    const-string v4, "pt_ActId"

    invoke-virtual {v3, v4}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-virtual {v2, v3}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 876
    :cond_5
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initView()V

    .line 877
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->getBestCoupon()V

    goto/16 :goto_0

    .line 880
    :sswitch_4
    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "order_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    .line 881
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->doPay()V

    goto/16 :goto_0

    .line 885
    :cond_6
    sget-object v2, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v2, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0xc -> :sswitch_4
        0x12 -> :sswitch_2
        0x17 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 3
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 921
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    if-nez v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->img:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 925
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewPromotion:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 926
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewPromotion:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 927
    :cond_2
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->imgviewCoupon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public XYKClick(Landroid/view/View;)V
    .locals 3
    .parameter "btn"

    .prologue
    .line 368
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_1

    .line 370
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 371
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    const-string v1, "\u60a8\u672a\u7ed1\u5b9a\u4fe1\u7528\u5361,\u8bf7\u53bb\u8d26\u6237\u7ba1\u7406\u9875\u7ed1\u5b9a\u4fe1\u7528\u5361!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 375
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/ubsale/UbBuy$2;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbBuy$2;-><init>(Lcom/ub/main/ubsale/UbBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 387
    const-string v0, "3"

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public YEClick(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 397
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 402
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public YouHuiClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/coupon/CouponList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sid"

    const-string v2, "10000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v1, "vmid"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v1, :cond_1

    .line 750
    const-string v1, "couponId"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v2}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :goto_0
    iget-boolean v1, p0, Lcom/ub/main/ubsale/UbBuy;->hasCoupon:Z

    if-eqz v1, :cond_0

    .line 755
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ub/main/ubsale/UbBuy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 756
    :cond_0
    return-void

    .line 752
    :cond_1
    const-string v1, "couponId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public ZFClick(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    const/4 v1, 0x1

    .line 352
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 354
    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 355
    iput v1, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 357
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->finish()V

    .line 421
    return-void
.end method

.method public buyWayClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 759
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/foodsale/BuyWaySelect;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 760
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "money"

    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v3, "balance"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ub/main/ubsale/UbBuy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 763
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f080111

    const v3, 0x7f080099

    .line 768
    sparse-switch p1, :sswitch_data_0

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 770
    :sswitch_0
    if-nez p3, :cond_1

    .line 771
    iput-object v5, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 783
    :goto_1
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initView()V

    .line 784
    iput-object v5, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 773
    :cond_1
    new-instance v1, Lcom/ub/main/data/Coupon;

    invoke-direct {v1}, Lcom/ub/main/data/Coupon;-><init>()V

    iput-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 774
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "title"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "channel"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "oldprice"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setOldprice(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "newprice"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setNewprice(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "icon"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "discountTypeId"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setDiscount_type_id(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v2, "discount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ub/main/data/Coupon;->setDiscount(Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :sswitch_1
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->finish()V

    goto :goto_0

    .line 790
    :sswitch_2
    const-string v0, "0"

    .line 791
    .local v0, id:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 792
    const-string v0, "0"

    .line 796
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 797
    iget v1, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    if-nez v1, :cond_3

    .line 798
    invoke-virtual {p0, v3}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u53cb\u5b9d\u94b1\u5305"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-virtual {p0, v4}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4f59\u989d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 794
    :cond_2
    const-string v1, "id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 800
    :cond_3
    iget v1, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 801
    invoke-virtual {p0, v3}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    invoke-virtual {p0, v4}, Lcom/ub/main/ubsale/UbBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u4f59\u989d--\u5143"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->finish()V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08009b

    if-ne v0, v1, :cond_0

    .line 904
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 906
    sput-boolean v2, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 907
    iget v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    if-nez v0, :cond_2

    .line 908
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 909
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_2
    iget v0, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    if-ne v0, v2, :cond_0

    .line 911
    iput v2, p0, Lcom/ub/main/ubsale/UbBuy;->pay_type:I

    .line 912
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbBuy;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initData()V

    .line 137
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initView()V

    .line 138
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbBuy;->initControl()V

    .line 139
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 667
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 668
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 672
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;

    .line 674
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 675
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 681
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbBuy;->back()V

    .line 683
    const/4 v0, 0x1

    .line 685
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
    .line 143
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 735
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 736
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 737
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method public payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "payChannelID"
    .parameter "behavorID"
    .parameter "param"
    .parameter "ObjectParam"

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 644
    .end local p4
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 645
    return-void

    .line 609
    .restart local p4
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 613
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p4, Landroid/app/Activity;

    .end local p4
    invoke-direct {v0, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 615
    const-string v1, "\u4ed8\u6b3e\u6210\u529f\u8bf7\u70b9\u51fb\"\u786e\u5b9a\"\uff0c\u51c6\u5907\u53d6\u8d27\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 616
    const-string v1, "\u786e\u5b9a"

    .line 617
    new-instance v2, Lcom/ub/main/ubsale/UbBuy$5;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbBuy$5;-><init>(Lcom/ub/main/ubsale/UbBuy;)V

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 609
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
