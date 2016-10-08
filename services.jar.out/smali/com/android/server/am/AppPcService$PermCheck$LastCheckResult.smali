.class Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastCheckResult"
.end annotation


# static fields
.field private static final ACTIVE_TIME:J = 0xea60L


# instance fields
.field mExpiredTime:J

.field mResult:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 2242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput p1, p0, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;->mResult:I

    .line 2244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;->mExpiredTime:J

    .line 2245
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 4

    .prologue
    .line 2251
    iget-wide v0, p0, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;->mExpiredTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
