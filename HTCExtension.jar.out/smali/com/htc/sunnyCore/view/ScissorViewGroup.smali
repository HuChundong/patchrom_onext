.class public Lcom/htc/sunnyCore/view/ScissorViewGroup;
.super Lcom/htc/sunnyCore/view/SViewGroup;
.source "ScissorViewGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 18
    sget-object v0, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 25
    sget-object v0, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onLayout(ZFFFII)V
    .locals 5
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 32
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/view/SViewGroup;->onLayout(ZFFFII)V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, left:I
    const/4 v1, 0x0

    .line 36
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    instance-of v2, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;

    iget v0, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mLayoutParams:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;

    iget v1, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    invoke-static {v2, v3, v4, p5, p6}, Lcom/htc/sunnyCore/SunnyCore;->Scissor_SetArea(IIIII)V

    .line 42
    return-void
.end method
