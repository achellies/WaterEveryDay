.class public Lcom/ub/main/util/alipay/PartnerConfig;
.super Ljava/lang/Object;
.source "PartnerConfig.java"


# static fields
.field public static final ALIAY_NOTIFICATION_CALLBACK_ADDRESS:Ljava/lang/String; = null

.field public static final ALIPAY_PLUGIN_NAME:Ljava/lang/String; = "alipay_plugin231_0901.apk"

.field public static final PARTNER:Ljava/lang/String; = "2088601308120351"

.field public static final RSA_ALIPAY_PUBLIC:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCLz9iwMHRanMV+2vUfJXsm9TsxGOz3XaqlUeq5 jxYi28p4iXYkukH1q+1RCGjOTDMNrQ5Mr3zJcjAy1BoRhmZTHEpKYEzSw7K2JFY6hLuDFLczPvYC 4XsZlxUhwhCXsLHQyuhllojwDldqEnBV3WxXB9QQnaU9qCU7uDUalEDsNwIDAQAB"

.field public static final RSA_PRIVATE:Ljava/lang/String; = "MIICWgIBAAKBgQC7jO/b5X+WWJa+e7nYc+gEBGp2077faGRULgi8nm/FwUgf6LxE28ZLMR3eGeUL/dc/gceFV5qFdHUciDcD6bAV9eXYi7mK5WrK/Y1qJyfm1wPziG0yo6CAvsklNAe+SLRpVWLDuu/nughXRqok5kObSonEe0NhBezY+ppsOMeb0wIDAQABAoGAOUcmreKeH514lD4XGPr0/d0XYqjyXypzkZ3pfyln+143F7+tV95C5g3fEEiaQhpJFZUeCSQjBeT2KzuSibhh1R04yfa3dZbREEJw4rGlQ52da+NYxTu2UB1mVfbTtnhUGdVnWOUroOVQVfwICBahxY91rFJ6z4O0pW1/2H13svECQQDhxTntS10yd0WUq/J1b4y/D62NlyTDN3UcVUeoEEsIJTVak7lPvTkNjyb7L9SoOZAV/9Elbd/L9YDcqGRX/rubAkEA1KmkD6VJ2OEW1IXfrGZcsQrHLb8P+xjQPVay2awmNwx+7NBQ392JJbx86t8jgXwec6tZXMcJ9kpDQQNjMpOwKQI/GLF5pHqZtutUsO4dlrqcqkkMsm/VlYR7Sp4JOFiP3FQ1gbKmkhIgK1t85/xTRhMFr2JLfcyGrcgsT/YbA4TZAkAUdzrtsod30rmivDt5WOSEuTfP5DpCfPHVZVmS7ylCVPaGDcoqsSQ4uHoBFHZTSMGZeh0Ae7sus5jjUdMjE+l5AkAuOgyCLlYz+TG9iBJPFJ4zI7GqRqT1RaDPTGhtb1RvnZ/ZxEV62oat2zg62DiidTmQgA39ss+kqvMLuGf4LYmN"

.field public static final SELLER:Ljava/lang/String; = "2088601308120351"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ub/main/util/NetConfig;->NETWORK_ENV:[[Ljava/lang/String;

    sget-byte v2, Lcom/ub/main/util/NetConfig;->NET_ENV_STATE:B

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "alipay/callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ub/main/util/alipay/PartnerConfig;->ALIAY_NOTIFICATION_CALLBACK_ADDRESS:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
