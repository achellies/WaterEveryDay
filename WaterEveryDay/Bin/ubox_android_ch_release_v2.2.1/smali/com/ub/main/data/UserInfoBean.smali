.class public Lcom/ub/main/data/UserInfoBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# static fields
.field public static final BALANCE:Ljava/lang/String; = "balance"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final COMPANY_NAME:Ljava/lang/String; = "company_name"

.field public static final COUPON_NUMS:Ljava/lang/String; = "coupon_nums"

.field public static final CREDITCARDNUMBER:Ljava/lang/String; = "pt_ActId"

.field public static final DELIVERY_ID:Ljava/lang/String; = "delivery_id"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISTRICT_ID:Ljava/lang/String; = "district_id"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final INSTITUSTION_TYPE:Ljava/lang/String; = "institustion_type"

.field public static final IS_VALIDATED:Ljava/lang/String; = "is_validated"

.field public static final JOB_DESCRIPTION:Ljava/lang/String; = "job_description"

.field public static final JOB_START_YEAR:Ljava/lang/String; = "job_start_year"

.field public static final MSN:Ljava/lang/String; = "msn"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PAY_POINTS:Ljava/lang/String; = "pay_points"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final PROVINCPUBLIC:Ljava/lang/String; = "province_id"

.field public static final QQ:Ljava/lang/String; = "qq"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static USER_ACOUNT:Ljava/lang/String; = null

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static USER_PASSWORD:Ljava/lang/String; = null

.field public static USER_PASSWORD_MD5:Ljava/lang/String; = null

.field public static final USER_RANK:Ljava/lang/String; = "user_rank"

.field public static final USER_TAG:Ljava/lang/String; = "user_tag"


# instance fields
.field private userInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, ""

    sput-object v0, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD_MD5:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/data/UserInfoBean;->userInfo:Ljava/util/HashMap;

    .line 10
    return-void
.end method


# virtual methods
.method public getValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/ub/main/data/UserInfoBean;->userInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    :cond_0
    return-object v0
.end method

.method public setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ub/main/data/UserInfoBean;->userInfo:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
