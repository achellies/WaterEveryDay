.class public Lcom/ub/main/order/OrderHome;
.super Lcom/ub/main/BaseActivity;
.source "OrderHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I


# instance fields
.field private adapter:Lcom/ub/main/order/OrderAdapter;

.field private arrow:Landroid/widget/ImageView;

.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private foodBtn:Landroid/widget/Button;

.field private isAniOn:Z

.field private line:Landroid/widget/ImageView;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private moreButton:Landroid/widget/Button;

.field private movieBtn:Landroid/widget/Button;

.field private orderType:I

.field private pageIndex:I

.field private saleBtn:Landroid/widget/Button;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private task:Lcom/ub/main/net/ImageLoadingTaskInfo;

.field private tasklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected totalnum:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/ub/main/order/OrderHome;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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
    sput-object v0, Lcom/ub/main/order/OrderHome;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId:[I

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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->tasklist:Ljava/util/ArrayList;

    .line 582
    new-instance v0, Lcom/ub/main/order/OrderHome$1;

    invoke-direct {v0, p0}, Lcom/ub/main/order/OrderHome$1;-><init>(Lcom/ub/main/order/OrderHome;)V

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/order/OrderHome;)Lcom/ub/main/order/OrderAdapter;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    return-void
.end method

.method private initModel()V
    .locals 9

    .prologue
    const v5, 0x7f04000e

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    iput v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    .line 159
    iput-boolean v3, p0, Lcom/ub/main/order/OrderHome;->isAniOn:Z

    .line 160
    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 161
    .local v7, bundle:Landroid/os/Bundle;
    const-string v8, "0"

    .line 162
    .local v8, id:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 163
    const-string v0, "id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 164
    const v0, 0x7f0200ad

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 165
    .local v6, ani:Landroid/view/animation/Animation;
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iput-boolean v2, p0, Lcom/ub/main/order/OrderHome;->isAniOn:Z

    .line 169
    .end local v6           #ani:Landroid/view/animation/Animation;
    :cond_0
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 171
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 172
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    iput v3, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    .line 176
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetOrderListString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 210
    return-void

    .line 182
    :cond_2
    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 187
    iput v2, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    .line 189
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 190
    const-string v0, "10001"

    .line 191
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 197
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 198
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 200
    const/4 v0, 0x2

    iput v0, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    .line 202
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETFAVORLIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 203
    const-string v0, "10004"

    .line 204
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 201
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    .line 143
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    .line 144
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    .line 145
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->arrow:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    .line 147
    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->listView:Landroid/widget/ListView;

    .line 149
    new-instance v0, Lcom/ub/main/order/OrderAdapter;

    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ub/main/order/OrderAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;

    .line 150
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v4, "200"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 229
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "orderList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 230
    .local v1, temp:Lorg/json/JSONObject;
    invoke-static {}, Lcom/ub/main/order/OrderHome;->$SWITCH_TABLE$com$ub$main$util$NetConfig$HttpRequestId()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 392
    :goto_0
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/ub/main/order/OrderAdapter;->setData(Ljava/util/ArrayList;)V

    .line 393
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;

    invoke-virtual {v4}, Lcom/ub/main/order/OrderAdapter;->notifyDataSetChanged()V

    .line 397
    .end local v1           #temp:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 232
    .restart local v1       #temp:Lorg/json/JSONObject;
    :sswitch_0
    const-string v4, "data_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    .line 233
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    if-lez v4, :cond_2

    .line 234
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, tempObj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 267
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 268
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 238
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 239
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 240
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "icon"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "id"

    const-string v6, "order_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "money"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total_price"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "time"

    const-string v6, "created"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "status"

    const-string v6, "order_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "imgUrl"

    const-string v6, "picSmall"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "bigImgUrl"

    const-string v6, "picBig"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "vmid"

    const-string v6, "vmid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "address"

    const-string v6, "vm_address"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponName"

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponType"

    const-string v6, "discount_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponMoney"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "discount"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "name"

    const-string v6, "product_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 275
    .end local v0           #i:I
    .end local v2           #tempObj:Lorg/json/JSONObject;
    :cond_2
    const-string v4, "\u6ca1\u6709\u8ba2\u5355\u8bb0\u5f55!"

    invoke-static {p0, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :sswitch_1
    const-string v4, "data_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    .line 280
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    if-lez v4, :cond_9

    .line 281
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    .line 282
    const/4 v2, 0x0

    .line 283
    .restart local v2       #tempObj:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 284
    .local v3, time:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 327
    const/4 v3, 0x0

    .line 333
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_8

    .line 334
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 285
    :cond_3
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 286
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 287
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 288
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "icon"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "id"

    const-string v6, "order_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "money"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total_price"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "time"

    const-string v6, "order_created"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "status"

    const-string v6, "order_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "imgUrl"

    .line 294
    const-string v6, "film_pic_small"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "bigImgUrl"

    .line 296
    const-string v6, "film_pic_big"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "name"

    const-string v6, "film_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "price"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total_price"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "nums"

    const-string v6, "seat_nums"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "cinema"

    const-string v6, "cinema_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v4, "plan_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00:0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "plan_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "filmtime"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "plan_date"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "seat"

    const-string v6, "seat_list"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponName"

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponType"

    const-string v6, "discount_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponMoney"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "discount"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "expire"

    const-string v6, "expire"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 305
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plan_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "plan_time"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 307
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 309
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plan_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plan_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "plan_time"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 337
    :cond_8
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 341
    .end local v0           #i:I
    .end local v2           #tempObj:Lorg/json/JSONObject;
    .end local v3           #time:Ljava/lang/String;
    :cond_9
    const-string v4, "\u6ca1\u6709\u8ba2\u5355\u8bb0\u5f55!"

    invoke-static {p0, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :sswitch_2
    const-string v4, "data_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    .line 346
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    if-lez v4, :cond_c

    .line 347
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    .line 348
    const/4 v2, 0x0

    .line 349
    .restart local v2       #tempObj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_a

    .line 380
    iget v4, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 381
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
    :cond_a
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 351
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 352
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 353
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "icon"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "id"

    const-string v6, "order_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "money"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total_price"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "time"

    const-string v6, "created"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "status"

    const-string v6, "order_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "imgUrl"

    const-string v6, "picSmall"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "bigImgUrl"

    const-string v6, "picBig"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "vmid"

    const-string v6, "vmid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "address"

    const-string v6, "vm_address"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponName"

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponType"

    const-string v6, "discount_type_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponMoney"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "discount"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "name"

    const-string v6, "product_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 384
    :cond_b
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    iget-object v4, p0, Lcom/ub/main/order/OrderHome;->line:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 388
    .end local v0           #i:I
    .end local v2           #tempObj:Lorg/json/JSONObject;
    :cond_c
    const-string v4, "\u6ca1\u6709\u8ba2\u5355\u8bb0\u5f55!"

    invoke-static {p0, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    .end local v1           #temp:Lorg/json/JSONObject;
    :cond_d
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x22 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x8

    const v5, 0x7f04000e

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08015f

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/ub/main/order/OrderHome;->totalnum:I

    if-ge v0, v1, :cond_1

    .line 404
    iget v0, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    .line 405
    iget v0, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 408
    :pswitch_0
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 409
    iget v0, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    sget v2, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetOrderListString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 407
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 415
    const-string v0, "10001"

    .line 416
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 414
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :pswitch_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 423
    const-string v0, "10004"

    .line 424
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 421
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->moreButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 437
    :cond_3
    iput v2, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    .line 438
    iput v3, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    .line 439
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 441
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 442
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 443
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ub/main/order/OrderHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 445
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 446
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 447
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 451
    :pswitch_3
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 453
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->saleBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 455
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 456
    iget v0, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    sget v2, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetOrderListString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 454
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :pswitch_4
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 464
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->movieBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 466
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 467
    const-string v0, "10001"

    .line 468
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 465
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :pswitch_5
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 476
    iget-object v0, p0, Lcom/ub/main/order/OrderHome;->foodBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 478
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDER_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 479
    const-string v0, "10004"

    .line 480
    iget v2, p0, Lcom/ub/main/order/OrderHome;->pageIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    sget v3, Lcom/ub/main/util/UIConfig;->LIST_ITEM_NUM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createMovieOrderListPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 477
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 449
    :pswitch_data_1
    .packed-switch 0x7f08015a
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderHome;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Lcom/ub/main/order/OrderHome;->initView()V

    .line 116
    invoke-direct {p0}, Lcom/ub/main/order/OrderHome;->initModel()V

    .line 117
    invoke-direct {p0}, Lcom/ub/main/order/OrderHome;->initControl()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 125
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 135
    .end local v0           #i:I
    :cond_0
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 136
    return-void

    .line 127
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 128
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v2, "icon"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v2, "icon"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 492
    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    .line 493
    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "type"

    iget v4, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    const-string v4, "imgUrl"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "bigImgUrl"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v4, "orderId"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, "orderStatus"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "status"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v4, "orderMoney"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "money"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v4, "orderTime"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "time"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v4, "name"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "name"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "money"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "money"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v4, "num"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "nums"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v4, "couponType"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponType"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v4, "couponName"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponName"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v4, "couponMoney"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "couponMoney"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget v3, p0, Lcom/ub/main/order/OrderHome;->orderType:I

    packed-switch v3, :pswitch_data_0

    .line 536
    :goto_0
    const-class v3, Lcom/ub/main/order/OrderDetail;

    invoke-static {p0, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 538
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 514
    .restart local v0       #bundle:Landroid/os/Bundle;
    :pswitch_0
    const-string v4, "vmid"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "vmid"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v4, "address"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "address"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_1
    const-string v4, "cinemaName"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "cinema"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v4, "movieStreak"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "filmtime"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v4, "expire"

    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v5, "expire"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/ub/main/order/OrderHome;->dataMap:Ljava/util/Map;

    const-string v4, "seat"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    .local v1, seat:Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "\u6392"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v2, subf:Ljava/lang/StringBuffer;
    :goto_1
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 529
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    const-string v3, "\u5ea7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const-string v3, "seat"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x0

    .line 533
    goto/16 :goto_0

    .line 525
    :cond_1
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    const-string v3, "\u5ea7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 562
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 565
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
