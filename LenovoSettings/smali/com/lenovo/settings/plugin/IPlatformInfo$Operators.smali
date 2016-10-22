.class public final enum Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;
.super Ljava/lang/Enum;
.source "IPlatformInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/plugin/IPlatformInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operators"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

.field public static final enum CMCC:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

.field public static final enum CT:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

.field public static final enum CU:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

.field public static final enum OPEN:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CMCC:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->OPEN:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    const-string v1, "CU"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CU:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    const-string v1, "CT"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CT:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CMCC:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->OPEN:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CU:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->CT:Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->$VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->$VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    invoke-virtual {v0}, [Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/plugin/IPlatformInfo$Operators;

    return-object v0
.end method
