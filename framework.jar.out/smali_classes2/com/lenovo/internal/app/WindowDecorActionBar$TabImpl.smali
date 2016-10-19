.class public Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private fragment:Landroid/app/Fragment;

.field private hasOptionMenu:Z

.field private hasSetOptionMenu:Z

.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mClss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/app/WindowDecorActionBar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1270
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1276
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1282
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z

    .line 1283
    iput-boolean v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 1270
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasSetOptionMenu:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 1270
    iput-boolean p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->hasOptionMenu:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->bundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public addFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;

    .line 1287
    return-void
.end method

.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1393
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1403
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1406
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1331
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1334
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1365
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1368
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1354
    iput p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1355
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 1320
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1297
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1298
    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;

    .line 1299
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1310
    :goto_0
    return-object p0

    .line 1301
    :cond_0
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1302
    check-cast v0, Landroid/app/Fragment;

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;

    .line 1303
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;

    .line 1304
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1305
    const-string v0, "liqftest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTag mClss = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mClss:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1309
    :cond_1
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1200(Lcom/lenovo/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1379
    iget v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/lenovo/internal/app/WindowDecorActionBar;

    # getter for: Lcom/lenovo/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/app/WindowDecorActionBar;->access$1300(Lcom/lenovo/internal/app/WindowDecorActionBar;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1382
    :cond_0
    return-object p0
.end method
