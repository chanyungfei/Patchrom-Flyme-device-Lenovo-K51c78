.class Lcom/android/internal/telephony/dataconnection/DctController$1;
.super Ljava/lang/Object;
.source "DctController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 168
    const-string v0, "disable data service timeout and enable data service again"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-wide/32 v2, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 170
    return-void
.end method
