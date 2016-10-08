.class public Lcom/gsma/services/addon/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;,
        Lcom/gsma/services/addon/ConfigUtil$ConfigRules;,
        Lcom/gsma/services/addon/ConfigUtil$IRules;,
        Lcom/gsma/services/addon/ConfigUtil$IParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static createParser([Ljava/lang/String;)Lcom/gsma/services/addon/ConfigUtil$IParser;
    .locals 2
    .param p0, "rules"    # [Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;

    new-instance v1, Lcom/gsma/services/addon/ConfigUtil$ConfigRules;

    invoke-direct {v1, p0}, Lcom/gsma/services/addon/ConfigUtil$ConfigRules;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/gsma/services/addon/ConfigUtil$ConfigFileParser;-><init>(Lcom/gsma/services/addon/ConfigUtil$IRules;)V

    return-object v0
.end method
