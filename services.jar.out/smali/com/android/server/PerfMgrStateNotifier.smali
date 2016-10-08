.class public final Lcom/android/server/PerfMgrStateNotifier;
.super Ljava/lang/Object;
.source "PerfMgrStateNotifier.java"

# interfaces
.implements Lcom/android/server/am/IActivityStateNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PerfMgrStateNotifier$1;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PerfMgrStateNotifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public notifyActivityState(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "actState"    # Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .prologue
    .line 51
    sget-object v1, Lcom/android/server/PerfMgrStateNotifier$1;->$SwitchMap$com$android$server$am$IActivityStateNotifier$ActivityState:[I

    invoke-virtual {p3}, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    .line 67
    .local v0, "state":I
    :goto_1
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/PerfService;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 56
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 57
    .restart local v0    # "state":I
    goto :goto_1

    .line 59
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    .line 60
    .restart local v0    # "state":I
    goto :goto_1

    .line 62
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x4

    .line 63
    .restart local v0    # "state":I
    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyAppDied(ILjava/util/HashSet;)V
    .locals 4
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "packageList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/PerfService;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 80
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
