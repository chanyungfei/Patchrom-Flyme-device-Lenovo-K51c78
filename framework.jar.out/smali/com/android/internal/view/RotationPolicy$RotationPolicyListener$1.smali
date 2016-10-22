.class Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;
.super Landroid/database/ContentObserver;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method constructor <init>(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    const-string v0, "RotationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[rick debug] RotationPolicyListener selfChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-virtual {v0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->onChange()V

    .line 196
    return-void
.end method
