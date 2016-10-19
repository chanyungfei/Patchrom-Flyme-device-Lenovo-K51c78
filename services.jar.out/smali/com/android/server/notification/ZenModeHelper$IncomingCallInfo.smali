.class final Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingCallInfo"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;J)V
    .locals 1
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "ringTime"    # J

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->number:Ljava/lang/String;

    .line 692
    iput-wide p3, p0, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->time:J

    .line 693
    return-void
.end method
