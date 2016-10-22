.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field public static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field public static mIsIPO:Z


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v4, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 67
    invoke-virtual {p0, v7}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, #android:layout@user_switching_dialog#t

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "view":Landroid/view/View;
    const v4, #android:id@message#t

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, #android:string@user_switching_message#t

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p4, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 75
    if-eqz p5, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x110

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method


# virtual methods
.method public onWindowShown()V
    .locals 3

    .prologue
    .line 108
    const-string v1, "ActivityManagerUserSwitchingDialog"

    const-string v2, "onWindowShown called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-boolean v1, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 117
    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "ActivityManagerUserSwitchingDialog"

    const-string v2, "show called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 94
    sget-boolean v1, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "ActivityManagerUserSwitchingDialog"

    const-string v2, "IPO shutdown, switch user to foreground."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 97
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/UserSwitchingDialog;->mIsIPO:Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    goto :goto_0
.end method
