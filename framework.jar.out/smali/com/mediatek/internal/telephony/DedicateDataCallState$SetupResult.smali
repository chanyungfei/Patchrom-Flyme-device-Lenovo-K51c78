.class public final enum Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
.super Ljava/lang/Enum;
.source "DedicateDataCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/DedicateDataCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

.field public static final enum FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

.field public static final enum SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;


# instance fields
.field public failCause:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 22
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->$VALUES:[Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->$VALUES:[Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    return-object v0
.end method
