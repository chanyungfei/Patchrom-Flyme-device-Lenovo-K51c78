.class Landroid/app/FragmentManagerImpl$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$finalFragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$7;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$7;->val$finalFragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$7;->val$finalFragment:Landroid/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    .line 1242
    return-void
.end method
