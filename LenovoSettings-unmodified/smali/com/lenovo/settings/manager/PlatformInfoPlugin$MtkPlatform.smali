.class public final enum Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;
.super Ljava/lang/Enum;
.source "PlatformInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/manager/PlatformInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MtkPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

.field public static final enum mt6582:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

.field public static final enum mt6592:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

.field public static final enum mt6595:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    const-string v1, "mt6582"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6582:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    const-string v1, "mt6592"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6592:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    new-instance v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    const-string v1, "mt6595"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6595:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6582:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6592:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6595:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->$VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->$VALUES:[Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    invoke-virtual {v0}, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    return-object v0
.end method
