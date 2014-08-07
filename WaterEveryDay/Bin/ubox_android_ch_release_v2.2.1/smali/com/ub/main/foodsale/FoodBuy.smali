.class public Lcom/ub/main/foodsale/FoodBuy;
.super Lcom/ub/main/BaseActivity;
.source "FoodBuy.java"

# interfaces
.implements Lcom/ub/main/data/PayResultProcessListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I = null

.field private static final PAY_TYPE:Ljava/lang/String; = "paytype"

.field private static final REQUEST_ID_BUYWAY_LIST:I = 0x1

.field private static final REQUEST_ID_HUODONG_LIST:I = 0x2

.field private static final REQUEST_ID_YOUHUI_LIST:I


# instance fields
.field private actvityPrice:Ljava/lang/String;

.field private alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

.field private backBtn:Landroid/widget/Button;

.field private balance:Ljava/lang/String;

.field private buyBtn:Landroid/widget/Button;

.field private buyOrOrder:Z

.field private buywayDetail:Landroid/widget/TextView;

.field coupon:Lcom/ub/main/foodsale/FoodCoupon;

.field private couponPrice:Ljava/lang/String;

.field private goods_num:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field img:Landroid/widget/ImageView;

.field private latestTime:Ljava/lang/String;

.field private newPrice:Ljava/lang/String;

.field private oldPrice:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private order_product_id:Ljava/lang/String;

.field private order_product_num:Ljava/lang/String;

.field private pay_type:I

.field private pid:Ljava/lang/String;

.field private product_info:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_price:Ljava/lang/String;

.field private product_time:Ljava/lang/String;

.field promotion:Lcom/ub/main/foodsale/FoodPromotion;

.field private title:Ljava/lang/String;

.field private ubox_saleMachine_id:Ljava/lang/String;

.field private unique:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/ub/main/foodsale/FoodBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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
    sput-object v0, Lcom/ub/main/foodsale/FoodBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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
    .line 40
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->title:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;

    .line 101
    const-string v0, "1"

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_num:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->product_price:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->product_info:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->product_time:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pid:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->oldPrice:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->couponPrice:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->balance:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->actvityPrice:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->goods_num:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/foodsale/FoodBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->doPay()V

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/foodsale/FoodBuy;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ub/main/foodsale/FoodBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->goToGetProductActivity()V

    return-void
.end method

.method private doOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "tade_type"

    .prologue
    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/foodsale/FoodBuy$1;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodBuy$1;-><init>(Lcom/ub/main/foodsale/FoodBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 312
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/foodsale/FoodBuy$2;

    invoke-direct {v2, p0, p1}, Lcom/ub/main/foodsale/FoodBuy$2;-><init>(Lcom/ub/main/foodsale/FoodBuy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 353
    return-void
.end method

.method private doPay()V
    .locals 9

    .prologue
    .line 364
    iget-object v8, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    .line 367
    .local v8, price:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 368
    .local v7, numPrice:Ljava/lang/Float;
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, -0x414f39085f4a1273L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    .line 372
    :cond_0
    iget v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 376
    :pswitch_0
    new-instance v0, Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 378
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;->SetPayResultBehaviorListener(Lcom/ub/main/data/PayResultProcessListener;)V

    .line 380
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->alixToolInstalledCheck()Z

    move-result v6

    .line 382
    .local v6, alixToolIsExist:Z
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/ub/main/util/alipay/AlixMainManager;->setOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, v6}, Lcom/ub/main/util/alipay/AlixMainManager;->makeOrderToAlix(Z)Z

    goto :goto_0

    .line 388
    .end local v6           #alixToolIsExist:Z
    :pswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 389
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createPayByBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v5, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBestCoupon()V
    .locals 10

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pid:Ljava/lang/String;

    .line 620
    sget-object v9, Lcom/ub/main/util/NetConfig$HttpRequestId;->COUPON_FOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 621
    const-string v0, "10004"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->pid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    const-string v3, "5"

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const-string v7, "1"

    const-string v8, "1"

    invoke-static/range {v0 .. v8}, Lcom/ub/main/util/NetConfig;->createFOOD_couponFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    const-string v5, "\u6b63\u5728\u68c0\u67e5\u662f\u5426\u6709\u4f18\u60e0\u5238\u4fe1\u606f..."

    move-object v0, p0

    move-object v1, v9

    move-object v3, p0

    move-object v4, p0

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private goToGetProductActivity()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 438
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z

    if-eqz v0, :cond_0

    .line 439
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_LOCKFOOD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 440
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "orderID"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatHttpProtocolPostString([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    const-string v5, "\u6b63\u5728\u8fdb\u884c\u9501\u5b9a\u5546\u54c1..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 439
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "type"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    const-string v0, "vmid"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "pid"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "order_id"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "price"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_price:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->product_price:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "title"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->title:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "productName"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "urls"

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sput-boolean v5, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 454
    const-class v0, Lcom/ub/main/foodsale/FoodQuHuo;

    const/4 v1, 0x6

    invoke-static {p0, v0, v1, v6}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 182
    const-string v1, "buyOrOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z

    .line 183
    const-string v1, "vmid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    .line 184
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->title:Ljava/lang/String;

    .line 185
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;

    .line 187
    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_time:Ljava/lang/String;

    .line 188
    const-string v1, "price"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_price:Ljava/lang/String;

    .line 189
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    .line 190
    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->product_info:Ljava/lang/String;

    .line 191
    const-string v1, "latestTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->latestTime:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goods_num"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->goods_num:Ljava/lang/String;

    .line 194
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    .line 195
    const-string v1, "unique"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;

    .line 196
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->img:Landroid/widget/ImageView;

    .line 198
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->getBestCoupon()V

    .line 199
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v7, 0x7f0800bb

    const v6, 0x7f0800ba

    const v5, 0x7f0800b8

    const/4 v3, 0x0

    .line 203
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    .local v0, head:Landroid/view/ViewGroup;
    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->backBtn:Landroid/widget/Button;

    .line 205
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->backBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->backBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v2, 0x7f0800e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    .local v1, title1:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-boolean v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z

    if-eqz v2, :cond_1

    const-string v2, "\u7acb\u5373\u9884\u8ba2"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v2, 0x7f0800b4

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->product_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v2, 0x7f0800b5

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->product_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v2, 0x7f0800b6

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5355\u4ef7\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->product_price:Ljava/lang/String;

    invoke-static {v4}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v2, 0x7f0800b7

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u539f\u6599\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->product_info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const v2, 0x7f0800b9

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    .line 217
    iget v2, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    if-nez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53cb\u5b9d\u94b1\u5305(\u4f59"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->balance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    :goto_1
    const v2, 0x7f0800bd

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    .line 224
    iget-boolean v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z

    if-eqz v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    const-string v3, "\u9884\u5b9a"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    const v3, 0x7f020095

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u9884\u5b9a\u4efd\u6570"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_2
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v2, :cond_4

    .line 236
    invoke-virtual {p0, v7}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodCoupon;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_3
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v2, :cond_5

    .line 242
    invoke-virtual {p0, v6}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodPromotion;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_4
    const v2, 0x7f0800bc

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    invoke-static {v3}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 210
    :cond_1
    const-string v2, "\u7acb\u5373\u8d2d\u4e70"

    goto/16 :goto_0

    .line 219
    :cond_2
    iget v2, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 220
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    const-string v3, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    const-string v3, "\u8d2d\u4e70"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {p0, v5}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u8d2d\u4e70\u4efd\u6570"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 238
    :cond_4
    invoke-virtual {p0, v7}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u4e0d\u4f7f\u7528\u4f18\u60e0\u5238"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 244
    :cond_5
    invoke-virtual {p0, v6}, Lcom/ub/main/foodsale/FoodBuy;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u4e0d\u53c2\u52a0\u4f18\u60e0\u6d3b\u52a8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
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
    const/4 v4, 0x0

    .line 628
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 629
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    invoke-static {}, Lcom/ub/main/foodsale/FoodBuy;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 632
    :sswitch_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "oldPrice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->oldPrice:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "couponPrice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->couponPrice:Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "newPrice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "balance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->balance:Ljava/lang/String;

    .line 636
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "actvityPrice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->actvityPrice:Ljava/lang/String;

    .line 637
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "coupon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "coupon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 638
    new-instance v1, Lcom/ub/main/foodsale/FoodCoupon;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "coupon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ub/main/foodsale/FoodCoupon;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    .line 639
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->couponPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ub/main/foodsale/FoodCoupon;->setcouponPrice(Ljava/lang/String;)V

    .line 643
    :goto_1
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 644
    new-instance v1, Lcom/ub/main/foodsale/FoodPromotion;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ub/main/foodsale/FoodPromotion;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    .line 645
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->actvityPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ub/main/foodsale/FoodPromotion;->setactivityPrice(Ljava/lang/String;)V

    .line 649
    :goto_2
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/4 v1, 0x1

    .line 651
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->iconUrl:Ljava/lang/String;

    .line 652
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->img:Landroid/widget/ImageView;

    const v4, 0x7f020031

    .line 654
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    .line 650
    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 655
    .local v0, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 656
    .local v9, tasklist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v7, Lcom/ub/main/net/ImageLoadingTask2;

    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v7, v9, v1}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    .line 658
    .local v7, imageLoading:Lcom/ub/main/net/ImageLoadingTask2;
    invoke-virtual {v7}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    .line 660
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v7           #imageLoading:Lcom/ub/main/net/ImageLoadingTask2;
    .end local v9           #tasklist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->initView()V

    goto/16 :goto_0

    .line 641
    :cond_2
    iput-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    goto :goto_1

    .line 647
    :cond_3
    iput-object v4, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    goto :goto_2

    .line 663
    :sswitch_1
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->goToGetProductActivity()V

    goto/16 :goto_0

    .line 666
    :sswitch_2
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "order_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    .line 667
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->doPay()V

    goto/16 :goto_0

    .line 670
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/foodsale/FoodYudingSuccess;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "time"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->latestTime:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const/4 v1, 0x6

    invoke-virtual {p0, v8, v1}, Lcom/ub/main/foodsale/FoodBuy;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 676
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x29 -> :sswitch_0
        0x2c -> :sswitch_2
        0x31 -> :sswitch_3
    .end sparse-switch
.end method

.method public HuoDongClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/foodsale/FoodCouponList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isyouhui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    const-string v1, "sid"

    const-string v2, "10004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "vmid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "couponId"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v1, :cond_1

    .line 527
    const-string v1, "promotion"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    :goto_1
    const-string v1, "unique"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ub/main/foodsale/FoodBuy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    return-void

    .line 524
    :cond_0
    const-string v1, "couponId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 529
    :cond_1
    const-string v1, "promotion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public YEClick(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 271
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    .line 276
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodBuy;->doOrder(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public YouHuiClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/foodsale/FoodCouponList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isyouhui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    const-string v1, "sid"

    const-string v2, "10004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v1, "vmid"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "couponId"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v1, :cond_1

    .line 507
    const-string v1, "promotion"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :goto_1
    const-string v1, "unique"

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ub/main/foodsale/FoodBuy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    return-void

    .line 504
    :cond_0
    const-string v1, "couponId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 509
    :cond_1
    const-string v1, "promotion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public ZFClick(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    const/4 v1, 0x1

    .line 255
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 257
    sput-boolean v1, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 258
    iput v1, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    .line 260
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodBuy;->doOrder(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public back()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodBuy;->setResult(I)V

    .line 295
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->finish()V

    .line 296
    return-void
.end method

.method public buyWayClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ub/main/foodsale/BuyWaySelect;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "money"

    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v3, "balance"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ub/main/foodsale/FoodBuy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 540
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 545
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->finish()V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 553
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    if-nez p3, :cond_3

    .line 556
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    .line 557
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v3, :cond_2

    .line 558
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodPromotion;->activityPrice()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    .line 574
    :goto_1
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->initView()V

    .line 575
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_2
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->oldPrice:Ljava/lang/String;

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    goto :goto_1

    .line 563
    :cond_3
    new-instance v3, Lcom/ub/main/foodsale/FoodCoupon;

    const-string v4, "title"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ub/main/foodsale/FoodCoupon;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    .line 564
    const-string v3, "status"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 565
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v3, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u9009\u62e9\u7684\u4f18\u60e0\u5238\u4e0e\u4f18\u60e0\u6d3b\u52a8\u51b2\u7a81\uff01"

    invoke-static {v3, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    :cond_4
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    .line 571
    :cond_5
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    const-string v4, "couponPrice"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/foodsale/FoodCoupon;->setcouponPrice(Ljava/lang/String;)V

    .line 572
    const-string v3, "newprice"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    goto :goto_1

    .line 578
    :pswitch_1
    if-nez p3, :cond_7

    .line 579
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    .line 580
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v3, :cond_6

    .line 581
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    invoke-virtual {v3}, Lcom/ub/main/foodsale/FoodCoupon;->couponPrice()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    .line 597
    :goto_2
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->initView()V

    .line 598
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 583
    :cond_6
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->oldPrice:Ljava/lang/String;

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    goto :goto_2

    .line 586
    :cond_7
    new-instance v3, Lcom/ub/main/foodsale/FoodPromotion;

    const-string v4, "title"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ub/main/foodsale/FoodPromotion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    .line 587
    const-string v3, "status"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    .line 588
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v3, :cond_8

    .line 589
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u9009\u62e9\u7684\u4f18\u60e0\u6d3b\u52a8\u4e0e\u4f18\u60e0\u5238\u51b2\u7a81\uff01"

    invoke-static {v3, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    :cond_8
    iput-object v6, p0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    .line 594
    :cond_9
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    const-string v4, "activityPrice"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/foodsale/FoodPromotion;->setactivityPrice(Ljava/lang/String;)V

    .line 595
    const-string v3, "newprice"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->newPrice:Ljava/lang/String;

    goto :goto_2

    .line 601
    :pswitch_2
    const-string v3, "id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, id:Ljava/lang/String;
    const-string v3, "detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, detail:Ljava/lang/String;
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    .line 605
    iget v3, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    if-nez v3, :cond_b

    .line 606
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53cb\u5b9d\u94b1\u5305(\u4f59"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v6, "balance"

    invoke-virtual {v5, v6}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :cond_a
    :goto_3
    const-string v3, "paytype"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/ub/main/foodsale/FoodBuy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 612
    .local v2, sharedata:Landroid/content/SharedPreferences$Editor;
    const-string v3, "paytype"

    iget v4, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 607
    .end local v2           #sharedata:Landroid/content/SharedPreferences$Editor;
    :cond_b
    iget v3, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    if-ne v3, v7, :cond_a

    .line 608
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodBuy;->buywayDetail:Landroid/widget/TextView;

    const-string v4, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->finish()V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->buyBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 695
    sget-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ub/main/foodsale/FoodBuy;->pay_type:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ub/main/foodsale/FoodBuy;->doOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/ub/main/foodsale/FoodBuy;->setContentView(I)V

    .line 156
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->initData()V

    .line 157
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodBuy;->initView()V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 461
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;

    .line 467
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 468
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 474
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodBuy;->back()V

    .line 476
    const/4 v0, 0x1

    .line 478
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
    .line 162
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 486
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 487
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy;->TAG:Ljava/lang/String;

    const-string v1, "buy activity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "payChannelID"
    .parameter "behavorID"
    .parameter "param"
    .parameter "ObjectParam"

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 430
    .end local p4
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 431
    return-void

    .line 405
    .restart local p4
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 409
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p4, Landroid/app/Activity;

    .end local p4
    invoke-direct {v0, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 411
    const-string v1, "\u4ed8\u6b3e\u6210\u529f\u8bf7\u70b9\u51fb\"\u786e\u5b9a\"\uff0c\u51c6\u5907\u53d6\u8d27\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 412
    const-string v1, "\u786e\u5b9a"

    .line 413
    new-instance v2, Lcom/ub/main/foodsale/FoodBuy$3;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodBuy$3;-><init>(Lcom/ub/main/foodsale/FoodBuy;)V

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
