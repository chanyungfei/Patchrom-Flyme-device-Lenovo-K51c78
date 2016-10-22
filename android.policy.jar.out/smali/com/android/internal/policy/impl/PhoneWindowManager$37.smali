.class Lcom/android/internal/policy/impl/PhoneWindowManager$37;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8262
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpFastCamera:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 8267
    const-string v0, "LenovoShot"

    const-string v1, "Volume Up start camera service cancel Flag."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8268
    return-void
.end method
