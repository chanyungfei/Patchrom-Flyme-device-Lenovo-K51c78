.class public final enum Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;
.super Ljava/lang/Enum;
.source "PlatformInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/manager/PlatformInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platforms"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

.field public static final enum INTEL:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

.field public static final enum MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

.field public static final enum QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    const-string v1, "QUALCOMM"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    const-string v1, "INTEL"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->INTEL:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->INTEL:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->$VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->$VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    invoke-virtual {v0}, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    return-object v0
.end method
