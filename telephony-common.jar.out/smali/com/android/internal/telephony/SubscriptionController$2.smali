.class Lcom/android/internal/telephony/SubscriptionController$2;
.super Ljava/lang/Object;
.source "SubscriptionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;

.field final synthetic val$tmpNumber:Ljava/lang/String;

.field final synthetic val$tmpSubId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionController$2;->val$tmpNumber:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/SubscriptionController$2;->val$tmpSubId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$2;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$2;->val$tmpNumber:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$2;->val$tmpSubId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;IZ)I

    .line 1042
    return-void
.end method
