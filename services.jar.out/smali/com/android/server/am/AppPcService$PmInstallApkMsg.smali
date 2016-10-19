.class Lcom/android/server/am/AppPcService$PmInstallApkMsg;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmInstallApkMsg"
.end annotation


# instance fields
.field mLock:Ljava/lang/Object;

.field mPath:Ljava/lang/Object;

.field mResult:I

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 1

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mResult:I

    return-void
.end method
