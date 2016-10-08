.class Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCardtypeRunnable"
.end annotation


# instance fields
.field retryIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->retryIndex:Ljava/lang/Integer;

    .line 299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;->retryIndex:Ljava/lang/Integer;

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V

    .line 303
    return-void
.end method
