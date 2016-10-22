.class public final enum Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
.super Ljava/lang/Enum;
.source "IPlatformInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/plugin/IPlatformInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platforms"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

.field public static final enum INTEL:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

.field public static final enum MTK:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

.field public static final enum QUALCOMM:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->MTK:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    const-string v1, "QUALCOMM"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->QUALCOMM:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    new-instance v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    const-string v1, "INTEL"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->INTEL:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->MTK:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->QUALCOMM:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->INTEL:Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->$VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->$VALUES:[Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    invoke-virtual {v0}, [Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/plugin/IPlatformInfo$Platforms;

    return-object v0
.end method
