var isSymmetric = function(root) {
    if (root==null) return true;
    
    return symmetry(root.left,root.right);
};
 
const symmetry=function(leftpart,rightpart){
    if (leftpart==null && rightpart==null) return true;
    if (leftpart==null || rightpart==null) return false;
 
    return ((leftpart.val === rightpart.val) && symmetry(leftpart.left,rightpart.right) && symmetry(leftpart.right,rightpart.left))
};
